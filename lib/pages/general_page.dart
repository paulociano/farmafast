import 'package:farmafast/pages/pedidos_page.dart';
import 'package:farmafast/pages/servicos_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'main_page.dart';

int _currentIndex = 0;

final List<Widget> _pages = [
  const MainPage(),
  const PedidosPage(),
  const ServicosPage()
];

class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.people), // Ícone do drawer
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        toolbarHeight: 80,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset(
          'assets/images/logofarmafast.png',
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
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 206, 0, 49),
          selectedItemColor: Colors.white,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
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
