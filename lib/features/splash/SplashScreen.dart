import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_instant/features/onboard/onboard_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => OnboardScreen()
          )
      );
    });
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      color: Color(0xff0D6EFD),
      child: SvgPicture.asset('assets/images/splash_logo.svg'),
    );
  }
}
