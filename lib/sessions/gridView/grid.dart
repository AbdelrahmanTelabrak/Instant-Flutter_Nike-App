import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        alignment: Alignment.center,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            leading: Text('1'),
            title: Text('title'),
            subtitle: Text('Subtitle'),
            trailing: Text('Extra data'),
            onTap: (){
              print('tap on card');
            },
          ),
        ),
      ),
    );
  }
}
