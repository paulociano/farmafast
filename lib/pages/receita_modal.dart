import 'package:date_field/date_field.dart';
import 'package:farmafast/buttons/imgsource_button.dart';
import 'package:farmafast/repositories/receitas_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ReceitaModal extends StatefulWidget {
  const ReceitaModal({super.key});

  @override
  State<ReceitaModal> createState() => _ReceitaModalState();
}

class _ReceitaModalState extends State<ReceitaModal> {
  var descricaoController = TextEditingController(text: "");
  var vencimentoController = TextEditingController(text: "");
  late ReceitasRepository repositorioReceitas;

  @override
  Widget build(BuildContext context) {
    repositorioReceitas = Provider.of<ReceitasRepository>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            DateTimeFormField(
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.black),
                hintText: 'Data de Vencimento',
                errorStyle: TextStyle(color: Colors.redAccent),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.date_range),
              ),
              mode: DateTimeFieldPickerMode.date,
              autovalidateMode: AutovalidateMode.always,
              dateFormat: DateFormat('dd/MM/yyyy'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Preview:',
              style: TextStyle(fontSize: 20),
            ),
            if (repositorioReceitas.receita.toString() != '')
              Image(
                image: AssetImage(repositorioReceitas.receita.toString()),
                width: 200,
                height: 300,
              ),
            const SizedBox(height: 70),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 206, 0, 49))),
              onPressed: () {
                repositorioReceitas.setImage('');
                Get.back();
              },
              child: const Text('SALVAR'),
            ),
          ],
        ),
      ),
      floatingActionButton: const ImgSourceButton(),
    );
  }
}
