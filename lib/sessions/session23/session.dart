import 'package:flutter/material.dart';
import 'package:flutter_instant/widgets/texts.dart';

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: boldText('Dialog Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: MaterialButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Dialog Title'),
                      content: Text('This is a Flutter dialog example'),
                      actionsPadding: EdgeInsets.symmetric(vertical: 0),
                      buttonPadding: EdgeInsets.zero,
                      actions: [
                        MaterialButton(
                            onPressed: () {
                              // Close the dialog
                              Navigator.of(context).pop();
                            },
                            padding: EdgeInsets.zero,
                            child: Text('OK')),
                      ],
                    );
                  },
                );
              },
              child: boldText('Show dialog'),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  BottomSheetExample({super.key});

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: boldText('Bottom Sheet Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                _scaffoldKey.currentState!.showBottomSheet((context) {
                  return BottomSheet(
                    onClosing: () {},
                    showDragHandle: true,
                    enableDrag: true,
                    builder: (context) {
                      return Container(
                        color: Colors.red,
                      );
                    },
                  );
                });
              },
              color: Colors.white70,
              child: boldText('Show Bottom Sheet'),
            ),
            const SizedBox(height: 30,),
            MaterialButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  duration: const Duration(seconds: 3),
                  action: SnackBarAction(
                    label: 'OK',
                    onPressed: () {
                      print("Snack bar OK");
                    },
                  ),
                  content: const Text('Text copied successfully'),
                ));
              },
              color: Colors.white70,
              child: boldText('Show SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigatorExample extends StatelessWidget {
  const NavigatorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: boldText('Navigator Example'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const DialogExample()));
          },
          color: Colors.white60,
          child: const Text('navigate'),
        ),
      ),
    );
  }
}

