import 'package:flutter/material.dart';
import 'package:flutter_instant/features/onboard/si_pages/onboard1.dart';
import 'package:flutter_instant/features/onboard/si_pages/onboard2.dart';
import 'package:flutter_instant/features/onboard/si_pages/onboard3.dart';
import 'package:flutter_instant/widgets/texts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1483C2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 550,
            child: PageView(
              controller: _controller,
              children: const [
                Onboard1(),
                Onboard2(),
                Onboard3(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const ExpandingDotsEffect(
              activeDotColor: Colors.white,
              dotColor: Colors.amberAccent,
              dotHeight: 5,
              dotWidth: 25,
              expansionFactor: 1.8
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            child: SizedBox(
              height: 45,
              child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
