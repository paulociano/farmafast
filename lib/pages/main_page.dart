import 'package:farmafast/pages/farmacia_page.dart';
import 'package:farmafast/pages/remedio_page.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> farmacias = [
      Card(
          child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FarmaciaPage()));
              },
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/farmacia1.png'))),
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(0),
              ))),
      Card(
          child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FarmaciaPage()));
              },
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/farmacia2.jpg'))),
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(0),
              ))),
      Card(
          child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FarmaciaPage()));
              },
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/farmacia3.png'))),
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(0),
              ))),
    ];
    List<Widget> remedios = [
      Card(
          child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RemedioPage()));
              },
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/remedio1.jpg'))),
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(0),
              ))),
      Card(
          child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RemedioPage()));
              },
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/remedio2.jpg'))),
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(0),
              ))),
      Card(
          child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RemedioPage()));
              },
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/remedio3.jpg'))),
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(0),
              ))),
    ];

    return SingleChildScrollView(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1.0),
                  ),
                  padding: const EdgeInsets.all(3),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Pesquisar remédios ou farmácias...',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {
                    // Lógica do botão
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/banner1.jpg'))),
                    width: 400,
                    height: 135,
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: [
                        const SizedBox(height: 70),
                        ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 206, 0, 49))),
                          onPressed: () {
                            // Lógica do botão dentro do banner
                          },
                          child: const Text('SAIBA MAIS'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Ranking Farmácias',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                width: 350,
                child: Swiper(
                  itemCount: farmacias.length,
                  itemBuilder: (context, index) {
                    return farmacias[index];
                  },
                  control: const SwiperControl(
                      color: Color.fromARGB(255, 206, 0, 49)),
                  viewportFraction: 0.45,
                  scale: 1,
                  loop: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: InkWell(
                  onTap: () {
                    // Lógica do botão
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/banner2.jpg'))),
                    width: 400,
                    height: 80,
                    padding: const EdgeInsets.all(0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Remédios Mais Vendidos',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: Swiper(
                  itemCount: remedios.length,
                  itemBuilder: (context, index) {
                    return remedios[index];
                  },
                  control: const SwiperControl(
                      color: Color.fromARGB(255, 206, 0, 49)),
                  viewportFraction: 0.25,
                  scale: 0.5,
                  loop: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
