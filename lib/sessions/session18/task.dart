import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalog',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: [
          Container(
            margin: const EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Icon(
              Icons.shopping_cart,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: const [
          CatalogItem(Colors.red, 'Code Smells'),
          CatalogItem(Colors.black, 'Control Flow'),
          CatalogItem(Colors.blue, 'Interpreter'),
          CatalogItem(Colors.green, 'Recursion'),
          CatalogItem(Colors.amber, 'Sprint'),
          CatalogItem(Colors.orange, 'Heisenbug'),
          CatalogItem(Colors.purple, 'Spaghetti'),
          CatalogItem(Colors.blueGrey, 'Hydra Code'),
          CatalogItem(Colors.pink, 'Off-By-One'),
          CatalogItem(Colors.lightBlueAccent, 'Scope'),
          CatalogItem(Colors.red, 'Callback'),
        ],
      ),
    );
  }
}

class CatalogItem extends StatefulWidget {
  final Color color;
  final String title;

  const CatalogItem(this.color, this.title, [Key? key]) : super(key: key);

  @override
  _CatalogItemState createState() => _CatalogItemState();
}

class _CatalogItemState extends State<CatalogItem> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          color: widget.color,
          margin: const EdgeInsets.all(10),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      clicked = !clicked;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 25),
                    child: clicked ? Icon(Icons.check) : Text('Add'),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
