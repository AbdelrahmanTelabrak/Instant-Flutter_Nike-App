import 'package:flutter/material.dart';
import 'package:flutter_instant/widgets/texts.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Center(child: h1Text('Hello Again!', false)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 45, right: 45),
            child: paragraph1Text('Fill your Details Or continue with Social Media', true),
          ),
        ],
      ),
    );
  }
}
