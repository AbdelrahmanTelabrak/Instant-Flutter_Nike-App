import 'package:flutter/material.dart';

import '../../../widgets/texts.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1483C2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 70, left: 50, right: 50),
            child: Image.asset('assets/images/onboard/onboard_shoe3.png'),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, right: 50, top: 45),
            alignment: Alignment.center,
            child: h1Text('You Have the Power To', true),
          ),
          Container(
            margin: const EdgeInsets.only(left: 17, right: 17, top: 12),
            alignment: Alignment.center,
            child: paragraph2Text('There Are Many Beautiful And Attractive Plants To Your Room', true),
          ),
        ],
      ),
    );
  }
}
