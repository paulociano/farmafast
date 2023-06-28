import 'package:flutter/material.dart';

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/images/Delivery1.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Selecione seus Remédios',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              'Busque os remédios pelo nome e selecione o melhor preço',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Expanded(child: SizedBox.expand()),
            Row(
              children: [
                TextButton(onPressed: () {}, child: const Text('CONTINUAR'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
