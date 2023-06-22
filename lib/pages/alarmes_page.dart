import 'package:flutter/material.dart';

class AlarmePage extends StatefulWidget {
  const AlarmePage({super.key});

  @override
  State<AlarmePage> createState() => _AlarmePageState();
}

class _AlarmePageState extends State<AlarmePage> {
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
              child: ListTile(
                tileColor: Color.fromARGB(255, 206, 0, 49),
                title: Text(
                  'LEMBRETES DE REMÉDIOS',
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
              onPressed: () {},
              child: const Text(
                '+ Adicionar Novo Lembrete',
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
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                    width: 3, color: Color.fromARGB(255, 206, 0, 49))),
            child: SizedBox(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/remedio1.jpg'),
                          height: 80,
                        ),
                        Text(
                          'Remédio 1',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    color: Color.fromARGB(255, 206, 0, 49),
                    thickness: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.alarm),
                            Text(
                              'Horários Cadastrados',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const Text(
                          '08:00  -  20:00',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const Divider(),
                        Row(
                          children: [
                            TextButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    backgroundColor: MaterialStateProperty.all<
                                            Color>(
                                        const Color.fromARGB(255, 206, 0, 49))),
                                onPressed: () {},
                                child: const Text(
                                  'Editar',
                                  style: TextStyle(color: Colors.white),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            TextButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    backgroundColor: MaterialStateProperty.all<
                                            Color>(
                                        const Color.fromARGB(255, 206, 0, 49))),
                                onPressed: () {},
                                child: const Text(
                                  'Excluir',
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                    width: 3, color: Color.fromARGB(255, 206, 0, 49))),
            child: SizedBox(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/remedio2.jpg'),
                          height: 80,
                        ),
                        Text(
                          'Remédio 2',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    color: Color.fromARGB(255, 206, 0, 49),
                    thickness: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.alarm),
                            Text(
                              'Horários Cadastrados',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const Text(
                          '12:30  -  18:30',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const Divider(),
                        Row(
                          children: [
                            TextButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    backgroundColor: MaterialStateProperty.all<
                                            Color>(
                                        const Color.fromARGB(255, 206, 0, 49))),
                                onPressed: () {},
                                child: const Text(
                                  'Editar',
                                  style: TextStyle(color: Colors.white),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            TextButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    backgroundColor: MaterialStateProperty.all<
                                            Color>(
                                        const Color.fromARGB(255, 206, 0, 49))),
                                onPressed: () {},
                                child: const Text(
                                  'Excluir',
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
