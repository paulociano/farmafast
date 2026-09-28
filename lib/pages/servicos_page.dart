import 'package:farmafast/pages/alarmes_page.dart';
import 'package:farmafast/pages/doacoes_page.dart';
import 'package:farmafast/pages/receita_page.dart';
import 'package:farmafast/theme/farmafast_theme.dart';
import 'package:farmafast/widgets/ui.dart';
import 'package:flutter/material.dart';

class ServicosPage extends StatelessWidget {
  const ServicosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      _ServiceItem(
        icon: Icons.description_outlined,
        title: 'Minhas receitas',
        description: 'Organize receitas e acompanhe vencimentos.',
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ReceitaMainPage())),
      ),
      _ServiceItem(
        icon: Icons.alarm_outlined,
        title: 'Lembretes',
        description: 'Centralize sua rotina de medicamentos.',
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AlarmePage())),
      ),
      _ServiceItem(
        icon: Icons.volunteer_activism_outlined,
        title: 'Doação de remédios',
        description: 'Encontre instituições e canais de contato.',
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DoacaoPage())),
      ),
      _ServiceItem(
        icon: Icons.support_agent_outlined,
        title: 'Suporte',
        description: 'Acesse ajuda e orientações sobre o app.',
        onTap: () {},
      ),
    ];

    return AppShell(
      child: ListView(
        children: [
          Text('Serviços', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 8),
          Text(
            'Atalhos para organizar sua rotina de saúde e uso do aplicativo.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: FarmaFastColors.muted),
          ),
          const SizedBox(height: 24),
          LayoutBuilder(
            builder: (context, constraints) {
              final columns = constraints.maxWidth >= 900 ? 4 : constraints.maxWidth >= 560 ? 2 : 1;
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: columns == 1 ? 3.4 : 1.18,
                ),
                itemBuilder: (_, index) => _ServiceCard(item: items[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ServiceItem {
  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onTap;

  const _ServiceItem({
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  });
}

class _ServiceCard extends StatelessWidget {
  final _ServiceItem item;
  const _ServiceCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: item.onTap,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: FarmaFastColors.soft,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(item.icon, color: FarmaFastColors.primary),
              ),
              const SizedBox(height: 18),
              Text(item.title, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(item.description, style: Theme.of(context).textTheme.bodyMedium),
              const Spacer(),
              const Align(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.arrow_forward_rounded, color: FarmaFastColors.primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
