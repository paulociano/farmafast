import 'package:farmafast/pages/farmacia_page.dart';
import 'package:farmafast/pages/remedio_page.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:page_transition/page_transition.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> farmacias = [
    Card(
        child: InkWell(
            onTap: () {
              PageTransition(
                child: const FarmaciaPage(),
                type: PageTransitionType.scale,
                alignment: Alignment.center,
                duration: const Duration(milliseconds: 600),
              );
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
              PageTransition(
                child: const FarmaciaPage(),
                type: PageTransitionType.scale,
                alignment: Alignment.center,
                duration: const Duration(milliseconds: 600),
              );
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
              PageTransition(
                child: const FarmaciaPage(),
                type: PageTransitionType.scale,
                alignment: Alignment.center,
                duration: const Duration(milliseconds: 600),
              );
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
              PageTransition(
                child: const RemedioPage(),
                type: PageTransitionType.scale,
                alignment: Alignment.center,
                duration: const Duration(milliseconds: 600),
              );
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
              PageTransition(
                child: const RemedioPage(),
                type: PageTransitionType.scale,
                alignment: Alignment.center,
                duration: const Duration(milliseconds: 600),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/remedio2.jpg'))),
              width: 100,
              height: 100,
            ))),
    Card(
        child: InkWell(
            onTap: () {
              PageTransition(
                child: const RemedioPage(),
                type: PageTransitionType.scale,
                alignment: Alignment.center,
                duration: const Duration(milliseconds: 600),
              );
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
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
              const Divider(),
              Card(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/banner1.jpg'))),
                    width: 400,
                    height: 135,
                  ),
                ),
              ),
              const Divider(),
              const Text(
                'FARMÁCIAS',
                style: TextStyle(
                    color: Color.fromARGB(255, 206, 0, 49),
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 20,
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
                  viewportFraction: 0.3,
                  scale: 1,
                  loop: true,
                ),
              ),
              const Divider(),
              Card(
                elevation: 0,
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
              const Divider(),
              const Text(
                'MAIS VENDIDOS',
                style: TextStyle(
                    color: Color.fromARGB(255, 206, 0, 49),
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
