import 'package:flutter/material.dart';

class AlarmePage extends StatefulWidget {
  const AlarmePage({super.key});

  @override
  State<AlarmePage> createState() => _AlarmePageState();
}

class _AlarmePageState extends State<AlarmePage> {
  List<Widget> alarmes = [];

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
          const Spacer(),
          ListView(),
        ],
      ),
    );
  }
}
