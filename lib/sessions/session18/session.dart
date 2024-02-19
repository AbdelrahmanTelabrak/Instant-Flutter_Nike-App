import 'package:flutter/material.dart';

class WeightsTest extends StatelessWidget {
  const WeightsTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
class ListViewEx extends StatelessWidget {
  const ListViewEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

        ],
      ),
    );
  }
}

/// ListView vs SingleChildScrollView:
///   list view children takes the value of the cross axis, ex.: if scroll vertical, then the children's
///   width will be as same as the parent's

class SingleScroll extends StatelessWidget {
  const SingleScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        reverse: false,
        scrollDirection: Axis.vertical, //if Horizontal, must use Row
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}

class MultiChild extends StatelessWidget {
  const MultiChild({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      // body: Column(   /// Wrap vs Column vs ListView
      //   /// To give the column wrap_content value, use mainAxisSize: MainAxis.Size.min
      //   /// To give the column match_parent value, use mainAxisSize: MainAxis.Size.max
      //   // ************* IMPORTANT ****************
      //   mainAxisSize: MainAxisSize.min,
      //
      //   children: [
      //
      //   ],
      // ),
      body: Wrap( ///Wrap default orientation is "horizontal", by 'direction'
        direction: Axis.vertical,
        alignment: WrapAlignment.end,
        spacing: 20,///Space between the children of the Wrap.
        children: [

        ],
      ),
    );
  }
}
