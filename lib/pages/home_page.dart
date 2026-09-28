import 'package:farmafast/pages/farmacia_page.dart';
import 'package:farmafast/pages/remedio_page.dart';
import 'package:farmafast/theme/farmafast_theme.dart';
import 'package:farmafast/widgets/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const pharmacies = [
    ('Farmácia Vida', 'Entrega em 25 min', 'assets/images/farmacia1.png'),
    ('Bem Estar', 'Entrega em 32 min', 'assets/images/farmacia2.jpg'),
    ('Saúde Já', 'Entrega em 18 min', 'assets/images/farmacia3.png'),
  ];

  static const products = [
    ('Allegra 60mg', 'R\$ 42,90', 'assets/images/remedio3.jpg'),
    ('Produto 2', 'R\$ 18,50', 'assets/images/remedio1.jpg'),
    ('Produto 3', 'R\$ 27,90', 'assets/images/remedio2.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return AppShell(
      child: ListView(
        children: [
          Text('Encontre o que precisa com rapidez.', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 8),
          Text(
            'Busque medicamentos, farmácias e serviços em um só lugar.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: FarmaFastColors.muted),
          ),
          const SizedBox(height: 22),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Pesquisar medicamentos ou farmácias',
              prefixIcon: Icon(Icons.search_rounded),
              suffixIcon: Icon(Icons.tune_rounded),
            ),
          ),
          const SizedBox(height: 22),
          const _HeroBanner(),
          const SizedBox(height: 30),
          const SectionTitle(title: 'Farmácias perto de você', action: 'Ver todas'),
          const SizedBox(height: 14),
          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final columns = width >= 900 ? 3 : width >= 560 ? 2 : 1;
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: pharmacies.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 2.8,
                ),
                itemBuilder: (_, index) {
                  final item = pharmacies[index];
                  return _PharmacyCard(
                    name: item.$1,
                    subtitle: item.$2,
                    image: item.$3,
                    onTap: () => Get.to(() => const FarmaciaPage()),
                  );
                },
              );
            },
          ),
          const SizedBox(height: 30),
          const SectionTitle(title: 'Mais vendidos', action: 'Explorar'),
          const SizedBox(height: 14),
          SizedBox(
            height: 270,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              separatorBuilder: (_, __) => const SizedBox(width: 14),
              itemBuilder: (_, index) {
                final item = products[index];
                return _ProductCard(
                  name: item.$1,
                  price: item.$2,
                  image: item.$3,
                  onTap: () => Get.to(() => const RemedioPage()),
                );
              },
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _HeroBanner extends StatelessWidget {
  const _HeroBanner();

  @override
  Widget build(BuildContext context) {
    return Container(
      minHeight: 210,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [FarmaFastColors.primaryDark, FarmaFastColors.primary],
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final compact = constraints.maxWidth < 600;
          return Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SoftPill(icon: Icons.flash_on_outlined, label: 'FarmaFast agora'),
                    const SizedBox(height: 18),
                    Text(
                      'Cuidado e conveniência sem complicação.',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Explore ofertas e serviços selecionados para sua rotina.',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white.withOpacity(.84)),
                    ),
                  ],
                ),
              ),
              if (!compact) ...[
                const SizedBox(width: 24),
                Expanded(
                  flex: 3,
                  child: Image.asset('assets/images/Delivery1.png', height: 170, fit: BoxFit.contain),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}

class _PharmacyCard extends StatelessWidget {
  final String name;
  final String subtitle;
  final String image;
  final VoidCallback onTap;

  const _PharmacyCard({
    required this.name,
    required this.subtitle,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 68,
                height: 68,
                padding: const EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: FarmaFastColors.surface,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Image.asset(image, fit: BoxFit.contain),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 4),
                    Text(subtitle, style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right_rounded),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  final VoidCallback onTap;

  const _ProductCard({
    required this.name,
    required this.price,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 210,
      child: Card(
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(child: Image.asset(image, fit: BoxFit.contain)),
                ),
                const SizedBox(height: 14),
                Text(name, maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 5),
                Text(price, style: Theme.of(context).textTheme.titleLarge?.copyWith(color: FarmaFastColors.primary)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
