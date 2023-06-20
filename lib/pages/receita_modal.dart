import 'package:flutter/material.dart';

class ReceitaModal extends StatefulWidget {
  const ReceitaModal({super.key});

  @override
  State<ReceitaModal> createState() => _ReceitaModalState();
}

class _ReceitaModalState extends State<ReceitaModal> {
  var descricaoController = TextEditingController(text: "");
  var vencimentoController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 206, 0, 49),
          toolbarHeight: 100,
          centerTitle: true,
          title: const Text(
            'NOVA RECEITA',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: descricaoController,
              onChanged: (value) {
                debugPrint(value);
              },
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                  hintText: "Descrição",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(
                    Icons.edit_document,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: vencimentoController,
              onChanged: (value) {
                debugPrint(value);
              },
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                  hintText: "Data de Vencimento",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(
                    Icons.date_range,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 206, 0, 49),
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}
