import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class ApiExample extends StatefulWidget {
  const ApiExample({super.key});

  @override
  State<ApiExample> createState() => _ApiExampleState();
}

class _ApiExampleState extends State<ApiExample> {
  final String apiUrl = "https://fakestoreapi.com/";

  Future<List<dynamic>> fetchProducts() async {
    var result = await http.get(Uri.parse("${apiUrl}products"));
    return json.decode(result.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () async{
              var products = await fetchProducts();
              print(products);
            },
            child: Text('Fetch posts'),
          ),
          MaterialButton(
            onPressed: (){},
            child: Text('Get posts'),
          ),
          MaterialButton(
            onPressed: (){},
            child: Text('Get posts'),
          ),
          MaterialButton(
            onPressed: (){},
            child: Text('Get posts'),
          ),
        ],
      ),
    );
  }
}
