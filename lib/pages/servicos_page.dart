import 'package:flutter/material.dart';

class ServicosPage extends StatefulWidget {
  const ServicosPage({super.key});

  @override
  State<ServicosPage> createState() => _ServicosPageState();
}

class _ServicosPageState extends State<ServicosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            width: double.infinity,
            child: Card(
              child: ListTile(
                tileColor: Color.fromARGB(255, 206, 0, 49),
                title: Text(
                  'SERVIÇOS',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(
                Icons.edit_document,
                color: Colors.black,
              ),
              title: const Text(
                'Envio de Receita Digital',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                // Ação ao clicar no menu
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(
                Icons.alarm,
                color: Colors.black,
              ),
              title: const Text(
                'Lembretes de Remédios',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                // Ação ao clicar no menu
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(
                Icons.announcement,
                color: Colors.black,
              ),
              title: const Text(
                'Orientações',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                // Ação ao clicar no menu
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(
                Icons.medication_rounded,
                color: Colors.black,
              ),
              title: const Text(
                'Doações de Remédios',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                // Ação ao clicar no menu
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(
                Icons.support_agent,
                color: Colors.black,
              ),
              title: const Text(
                'Suporte',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                // Ação ao clicar no menu
              },
            ),
          ),
        ],
      ),
    );
  }
}
