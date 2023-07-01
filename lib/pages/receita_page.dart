import 'package:farmafast/pages/receita_modal.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ReceitaMainPage extends StatefulWidget {
  const ReceitaMainPage({super.key});

  @override
  State<ReceitaMainPage> createState() => _ReceitaMainPageState();
}

class _ReceitaMainPageState extends State<ReceitaMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        centerTitle: true,
        title: Image.asset(
          'assets/images/logofarmafast.png',
          height: 40,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            child: Card(
              color: Color.fromARGB(255, 206, 0, 49),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
                title: Text(
                  'MINHAS RECEITAS',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const ReceitaModal(),
                    type: PageTransitionType.bottomToTop,
                    duration: const Duration(milliseconds: 600),
                  ),
                );
              },
              child: const Text(
                '+ Adicionar Nova Receita',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 206, 0, 49),
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                'assets/images/receita1.jpg',
                width: 80,
                height: 80,
              ),
              title: const Text('Receita Losartan'),
              subtitle: const Text('22/02/2020'),
              trailing: const Icon(Icons.event_busy),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                'assets/images/receita1.jpg',
                width: 80,
                height: 80,
              ),
              title: const Text('Receita Rivotril'),
              subtitle: const Text('25/04/2022'),
              trailing: const Icon(Icons.event_busy),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                'assets/images/receita1.jpg',
                width: 80,
                height: 80,
              ),
              title: const Text(
                'Receita Antialergico',
                style: TextStyle(color: Colors.green),
              ),
              subtitle: const Text(
                '15/06/2023',
                style: TextStyle(color: Colors.green),
              ),
              trailing: const Icon(
                Icons.event_available,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
