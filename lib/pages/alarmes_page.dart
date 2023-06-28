import 'package:farmafast/pages/general_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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
      body: const Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
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
          SizedBox(
            height: 20,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          PageTransition(
            child: const GeneralPage(),
            type: PageTransitionType.bottomToTop,
            duration: const Duration(milliseconds: 600),
          );
        },
        backgroundColor: const Color.fromARGB(255, 206, 0, 49),
        child: const Icon(Icons.alarm_add),
      ),
    );
  }
}
