import 'package:farmafast/pages/remedio_page.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FarmaciaPage extends StatefulWidget {
  const FarmaciaPage({super.key});

  @override
  State<FarmaciaPage> createState() => _FarmaciaPageState();
}

class _FarmaciaPageState extends State<FarmaciaPage> {
  List<Widget> maisvendidos = [
    Card(
        child: InkWell(
            onTap: () {
              Get.to(() => const RemedioPage());
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
              Get.to(() => const RemedioPage());
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
              Get.to(() => const RemedioPage());
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

  List<Widget> promocoes = [
    Card(
        child: InkWell(
            onTap: () {
              Get.to(() => const RemedioPage());
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
              Get.to(() => const RemedioPage());
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
              Get.to(() => const RemedioPage());
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
          Card(
              elevation: 0.5,
              child: InkWell(
                  child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/fundofarmacia.png'))),
                      height: 230,
                      width: double.infinity,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: 262,
                            height: 163,
                            color: Colors.white,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color.fromARGB(10, 0, 0, 0),
                                  backgroundImage:
                                      AssetImage('assets/images/farmacia1.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Farmácia 1',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 247, 171, 7),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 247, 171, 7),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 247, 171, 7),
                                    ),
                                    Icon(
                                      Icons.star_border_outlined,
                                    ),
                                    Icon(Icons.star_border_outlined),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )))),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Produtos Mais Vendidos',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 206, 0, 49)),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SizedBox(
              height: 100,
              width: 350,
              child: Swiper(
                itemCount: maisvendidos.length,
                itemBuilder: (context, index) {
                  return maisvendidos[index];
                },
                control:
                    const SwiperControl(color: Color.fromARGB(255, 206, 0, 49)),
                viewportFraction: 0.33,
                scale: 1,
                loop: true,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Promoções',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 206, 0, 49)),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SizedBox(
              height: 100,
              width: 350,
              child: Swiper(
                itemCount: promocoes.length,
                itemBuilder: (context, index) {
                  return promocoes[index];
                },
                control:
                    const SwiperControl(color: Color.fromARGB(255, 206, 0, 49)),
                viewportFraction: 0.45,
                scale: 0,
                loop: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
