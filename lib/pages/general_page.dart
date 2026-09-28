import 'package:farmafast/pages/config_page.dart';
import 'package:farmafast/pages/pedidos_page.dart';
import 'package:farmafast/pages/servicos_page.dart';
import 'package:farmafast/theme/farmafast_theme.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  int paginaAtual = 0;
  final page = PageController();
  final titles = const ['Início', 'Pedidos', 'Serviços'];

  @override
  void dispose() {
    page.dispose();
    super.dispose();
  }

  void _setPage(int index) {
    setState(() => paginaAtual = index);
    page.animateToPage(
      index,
      duration: const Duration(milliseconds: 280),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final desktop = constraints.maxWidth >= 900;
        final content = PageView(
          controller: page,
          onPageChanged: (index) => setState(() => paginaAtual = index),
          children: const [MainPage(), PedidosPage(), ServicosPage()],
        );

        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 72,
            titleSpacing: 24,
            title: Row(
              children: [
                Image.asset('assets/images/logofarmafast.png', height: 34),
                if (desktop) ...[
                  const SizedBox(width: 18),
                  Container(width: 1, height: 28, color: FarmaFastColors.border),
                  const SizedBox(width: 18),
                  Text(titles[paginaAtual]),
                ],
              ],
            ),
            actions: [
              IconButton(
                tooltip: 'Configurações',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ConfigPage()),
                ),
                icon: const Icon(Icons.settings_outlined),
              ),
              IconButton(
                tooltip: 'Carrinho',
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_outlined),
              ),
              const SizedBox(width: 12),
            ],
          ),
          body: desktop
              ? Row(
                  children: [
                    NavigationRail(
                      selectedIndex: paginaAtual,
                      onDestinationSelected: _setPage,
                      labelType: NavigationRailLabelType.all,
                      minWidth: 96,
                      backgroundColor: Colors.white,
                      indicatorColor: FarmaFastColors.soft,
                      leading: Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: CircleAvatar(
                          radius: 22,
                          backgroundColor: FarmaFastColors.soft,
                          child: const Icon(Icons.person_outline, color: FarmaFastColors.primary),
                        ),
                      ),
                      trailing: Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: IconButton(
                              tooltip: 'Sair',
                              onPressed: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (_) => const LoginPage()),
                              ),
                              icon: const Icon(Icons.logout_rounded),
                            ),
                          ),
                        ),
                      ),
                      destinations: const [
                        NavigationRailDestination(
                          icon: Icon(Icons.home_outlined),
                          selectedIcon: Icon(Icons.home_rounded),
                          label: Text('Início'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.receipt_long_outlined),
                          selectedIcon: Icon(Icons.receipt_long_rounded),
                          label: Text('Pedidos'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.medical_services_outlined),
                          selectedIcon: Icon(Icons.medical_services_rounded),
                          label: Text('Serviços'),
                        ),
                      ],
                    ),
                    const VerticalDivider(width: 1),
                    Expanded(child: content),
                  ],
                )
              : content,
          bottomNavigationBar: desktop
              ? null
              : NavigationBar(
                  selectedIndex: paginaAtual,
                  onDestinationSelected: _setPage,
                  destinations: const [
                    NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home_rounded), label: 'Início'),
                    NavigationDestination(icon: Icon(Icons.receipt_long_outlined), selectedIcon: Icon(Icons.receipt_long_rounded), label: 'Pedidos'),
                    NavigationDestination(icon: Icon(Icons.medical_services_outlined), selectedIcon: Icon(Icons.medical_services_rounded), label: 'Serviços'),
                  ],
                ),
        );
      },
    );
  }
}
