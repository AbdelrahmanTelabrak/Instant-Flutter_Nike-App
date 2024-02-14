import 'package:flutter/material.dart';
import '../../../widgets/texts.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1483C2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.only(top: 80, left: 70, right: 70),
              child: centeredH1Text('Welcome To Nike', true)),
          Image.asset('assets/images/onboard/onboard_shoe1.png'),
        ],
      ),
    );
  }
}
