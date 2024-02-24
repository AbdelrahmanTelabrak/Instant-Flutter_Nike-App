import 'package:flutter/material.dart';

Widget sportsAppbar(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Container(
          height: 50,
          margin: EdgeInsets.symmetric(vertical: 15),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          alignment: Alignment.center,
          child: Row(
            children: [
              Icon(
                  Icons.search
              ),
              SizedBox(width: 10),
              Text('Search')
            ],
          ),
        ),
      ),
      SizedBox(
        width: 50,
        height: 50,
        child: Icon(
          Icons.menu_rounded,
          color: Colors.black,
          size: 30,
        ),
      ),
    ],
  );
}

Widget title(String txt){
  return Text(
    txt,
    textAlign: TextAlign.start,
    style: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget catSection(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title('Categories'),
      SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            catItem(Icons.sports_baseball_rounded, 'Sports'),
            catItem(Icons.devices, 'Devices'),
            catItem(Icons.book, 'Books'),
            catItem(Icons.shopping_bag_outlined, 'Clothes'),
            catItem(Icons.sports_baseball_rounded, 'Sports'),
            catItem(Icons.book, 'Books'),
          ],
        ),
      ),
    ],
  );
}
Widget catItem(IconData icon, String txt){
  return Container(
    margin: EdgeInsets.only(right: 20, top: 10),
    child: Column(
      children: [
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              shape: BoxShape.circle
          ),
          alignment: Alignment.center,
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
        Text(
          txt,
        )
      ],
    ),
  );
}

Widget bestSellItem(){
  return Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            color: Colors.grey,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title('Product 1'),
                Text('description'),
                Text('340\$'),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}