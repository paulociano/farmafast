import 'package:flutter/material.dart';

class DoacaoPage extends StatefulWidget {
  const DoacaoPage({super.key});

  @override
  State<DoacaoPage> createState() => _DoacaoPageState();
}

class _DoacaoPageState extends State<DoacaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              child: ListTile(
                tileColor: Color.fromARGB(255, 206, 0, 49),
                title: Text(
                  'DOAÇÃO DE REMÉDIOS',
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
                  hintText: 'Digite o nome do remédio..',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          const Divider(),
          const Card(
            child: SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage('assets/images/instituicao1.png'),
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.house),
                          Text(
                            'Nome da Instituição',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.place),
                          Text(
                            'Endereço da Instituição',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Image(
                    image: AssetImage('assets/images/whatsapp.png'),
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          const Card(
            child: SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage('assets/images/instituicao1.png'),
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.house),
                          Text(
                            'Nome da Instituição',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.place),
                          Text(
                            'Endereço da Instituição',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Image(
                    image: AssetImage('assets/images/whatsapp.png'),
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          const Card(
            child: SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage('assets/images/instituicao1.png'),
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.house),
                          Text(
                            'Nome da Instituição',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.place),
                          Text(
                            'Endereço da Instituição',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Image(
                    image: AssetImage('assets/images/whatsapp.png'),
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
