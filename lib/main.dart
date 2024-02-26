import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instant/features/home/home.dart';
import 'package:flutter_instant/features/splash/SplashScreen.dart';
import 'package:flutter_instant/features/onboard/onboard_screen.dart';
import 'package:flutter_instant/features/authentication/sign_in_screen.dart';
import 'package:flutter_instant/sessions/gridView/grid.dart';
import 'package:flutter_instant/sessions/session18/task.dart';
import 'package:flutter_instant/sessions/session19/workshop.dart';
import 'package:flutter_instant/widgets/texts.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

// void main() {
//   runApp(DevicePreview(
//     enabled: !kReleaseMode,
//     builder: (context) => const MyApp(),
//   ));
// }

/*
* 'key' is a parameter for the constructor of the StatelessWidget Class.
* StatelessWidget has better performance because it go through fewer functions
*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    locale: DevicePreview.locale(context),
    builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(40),
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: Colors.red),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.white),
            child: Image.asset(
              'assets/images/sneakers_pink.png',
              width: double.infinity,
              fit: BoxFit.contain,// contain vs fill, Contain is used if the image has different aspect ratio other than the container

            ),
          ),
        ));
  }
}
