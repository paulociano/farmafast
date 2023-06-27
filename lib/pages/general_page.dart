import 'package:farmafast/pages/pedidos_page.dart';
import 'package:farmafast/pages/servicos_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'main_page.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  int paginaAtual = 0;
  late PageController page;

  @override
  void initState() {
    super.initState();
    page = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.people,
              ), // Ícone do drawer
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        toolbarHeight: 80,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 206, 0, 49),
        centerTitle: true,
        title: Image.asset(
          'assets/images/logofarmafastbranco.png',
          height: 40,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const Text('SAIR'),
            )
          ],
        ),
      ),
      body: PageView(
        onPageChanged: setPaginaAtual,
        controller: page,
        children: const [
          MainPage(),
          PedidosPage(),
          ServicosPage(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: paginaAtual,
          backgroundColor: const Color.fromARGB(255, 206, 0, 49),
          selectedItemColor: Colors.white,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          onTap: (pagina) {
            page.animateToPage(pagina,
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 50),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list, size: 50),
              label: 'Pedidos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_services, size: 50),
              label: 'Serviços',
            ),
          ],
        ),
      ),
    );
  }
}
