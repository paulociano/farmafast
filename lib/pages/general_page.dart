import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
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
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
        toolbarHeight: 80,
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
            const SizedBox(
              height: 80,
            ),
            const CircleAvatar(
              radius: 60,
            ),
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
      bottomNavigationBar: CurvedNavigationBar(
        index: paginaAtual,
        animationCurve: Curves.ease,
        animationDuration: const Duration(milliseconds: 400),
        iconPadding: 10,
        color: const Color.fromARGB(255, 206, 0, 49),
        backgroundColor: Colors.white,
        buttonBackgroundColor: const Color.fromARGB(255, 206, 0, 49),
        onTap: (pagina) {
          page.animateToPage(pagina,
              duration: const Duration(milliseconds: 400), curve: Curves.ease);
        },
        items: const [
          CurvedNavigationBarItem(
              child: Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
              label: 'Início',
              labelStyle: TextStyle(color: Colors.white)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.list,
                size: 30,
                color: Colors.white,
              ),
              label: 'Pedidos',
              labelStyle: TextStyle(color: Colors.white)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.medical_services,
                size: 30,
                color: Colors.white,
              ),
              label: 'Serviços',
              labelStyle: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
