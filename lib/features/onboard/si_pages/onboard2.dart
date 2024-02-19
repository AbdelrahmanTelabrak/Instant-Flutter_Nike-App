import 'package:flutter/material.dart';

import '../../../widgets/texts.dart';

class Onboard2 extends StatelessWidget {
  const Onboard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1483C2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.only(top: 60, left: 50, right: 50),
              child: Image.asset('assets/images/onboard/onboard_shoe2.png'),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30, top: 45),
            alignment: Alignment.center,
            child: h1Text('Let’s Start Journey With Nike', true),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30, top: 12),
            alignment: Alignment.center,
            child: paragraph2Text('Smart, Gorgeous & Fashionable Collection s Now', true),
          ),
        ],
      ),
    );
  }
}
