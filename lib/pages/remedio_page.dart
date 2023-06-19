import 'package:flutter/material.dart';

class RemedioPage extends StatefulWidget {
  const RemedioPage({super.key});

  @override
  State<RemedioPage> createState() => _RemedioPageState();
}

class _RemedioPageState extends State<RemedioPage> {
  int quantidadeSelecionada = 1;

  void aumentarQuantidade() {
    setState(() {
      quantidadeSelecionada++;
    });
  }

  void diminuirQuantidade() {
    setState(() {
      if (quantidadeSelecionada > 1) {
        quantidadeSelecionada--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          centerTitle: true,
          title: Image.asset(
            'assets/images/logofarmafast.png',
            height: 40,
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Card(
                  elevation: 0.0,
                  child: InkWell(
                      child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/remedio3.jpg'))),
                    height: 150,
                    width: 150,
                    padding: const EdgeInsets.all(5),
                  ))),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Allegra 60mg',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            const Text(
              'Cloridrato de Fenofenaclina',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'R\$42.90',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Vendido por: Farmácia X',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Descrição',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                'Indicado para o alívio das manifestações alérgicas tais como:Rinite alérgica incluindo espirros, obstrução nasal (nariz entupido); Prurido (coceira) no nariz, no palato (céu da boca), na garganta e nos olhos; Coriza (nariz escorrendo); Conjuntivite alérgica com sintomas de lacrimejamento e vermelhidão dos olhos; Febre do feno (causada pelo pólen de algumas plantas); Alergias da pele como os da urticária (erupções avermelhadas na pele que causam coceira).',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text('Selecione a quantidade:'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: diminuirQuantidade,
                        ),
                        Container(
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                          child: Text(
                            quantidadeSelecionada.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: aumentarQuantidade,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 206, 0, 49))),
                        onPressed: () {},
                        child: const Text(
                          'Comprar',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                  ],
                )
              ],
            )
          ]),
        ));
  }
}
