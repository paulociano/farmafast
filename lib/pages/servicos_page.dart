import 'package:farmafast/pages/alarmes_page.dart';
import 'package:farmafast/pages/doacoes_page.dart';
import 'package:farmafast/pages/receita_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ServicosPage extends StatefulWidget {
  const ServicosPage({super.key});

  @override
  State<ServicosPage> createState() => _ServicosPageState();
}

class _ServicosPageState extends State<ServicosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const ReceitaMainPage(),
                        type: PageTransitionType.rightToLeft,
                        duration: const Duration(milliseconds: 600),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 3,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/envioreceita.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Minhas Receitas',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                );
              } else if (index == 1) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const AlarmePage(),
                        type: PageTransitionType.rightToLeft,
                        duration: const Duration(milliseconds: 600),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 3,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/despertador.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Lembretes de Remédios',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                );
              } else if (index == 2) {
                return InkWell(
                  onTap: () {},
                  child: Card(
                    color: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 3,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/orientacao.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Orientações',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                );
              } else if (index == 3) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const DoacaoPage(),
                        type: PageTransitionType.rightToLeft,
                        duration: const Duration(milliseconds: 600),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 3,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/doacao.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Doação de Remédios',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                );
              } else {
                return InkWell(
                  onTap: () {},
                  child: Card(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 3,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/suporte.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Suporte',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                );
              }
            }),
      ),
    );
  }
}
