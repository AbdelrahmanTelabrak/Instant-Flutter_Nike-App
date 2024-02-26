import 'package:flutter/material.dart';

class StatefulIntro extends StatefulWidget {
  const StatefulIntro({super.key});

  @override
  State<StatefulIntro> createState() => _StatefulIntroState();
}

class _StatefulIntroState extends State<StatefulIntro> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  counter++ ;
                });
              },
              color: Colors.blue,
              child: Text('+'),
            )
          ],
        ),
      ),
    );
  }
}
