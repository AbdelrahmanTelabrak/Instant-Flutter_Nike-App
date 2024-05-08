import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String exp = '', output = '', output2 = '';

  String getOutput(){
    if (output2.isNotEmpty && output.isEmpty){
      return output2;
    }
    return output;
  }

  String handleExp(String input, String type){
    String data = '';
    if (output2.isNotEmpty&& type=='op'){
      data = output2+input;
      output2 = '';
    }
    else if (output2.isNotEmpty && type=='num'){
      data = input;
      output2 = '';
    }
    else{
      data = input;
    }
    return data;
  }
  void buttonPressed(String buttonText, String type){
    if (type == 'CLR'){
      exp = ''; output = ''; output2 = '';
    }
    else if (type == 'num' || type == 'op'){
      exp += handleExp(buttonText, type);
      output = '';
    }
    else if (type == 'equal'){
      output2 = output.isNotEmpty? output:output2;
      output = '';
    }
    // To Re-render.
    setState(() {});
  }
  // types [num, CLR, op, equal]
  Widget buildButton(String buttonText, [String type = 'num']) {
    return Expanded(
      child: OutlinedButton(
        child: Text(buttonText,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),
          ),
        onPressed: () => buttonPressed(buttonText, type),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
           Column(
             children: [
               Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 12.0
                  ),
                  child: Text(exp, style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    
                  ))),
               Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 12.0
                  ),
                  child: Text(getOutput(), style: const TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                    
                  ))),
             ],
           ),
            const Expanded(
              child: Divider(),
            ),
            
            Column(children: [
              Row(children: [
                buildButton("7"),
                buildButton("8"),
                buildButton("9"),
                buildButton("/", 'op')
              ]),

              Row(children: [
                buildButton("4"),
                buildButton("5"),
                buildButton("6"),
                buildButton("*", 'op')
              ]),

              Row(children: [
                buildButton("1"),
                buildButton("2"),
                buildButton("3"),
                buildButton("-", 'op')
              ]),

              Row(children: [
                buildButton("."),
                buildButton("0"),
                buildButton("00"),
                buildButton("+", 'op')
              ]),

              Row(children: [
                buildButton("CLEAR", 'CLR'),
                buildButton("=", 'equal'),
              ])
            ])
          ],
        ));
  }
}




/*
String output = "0";

  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  buttonPressed(String buttonText){

    if(buttonText == "CLEAR"){
      
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";

    } else if (buttonText == "+" || buttonText == "-" || buttonText == "/" || buttonText == "X"){

      num1 = double.parse(output);

      operand = buttonText;

      _output = "0";

    } else if(buttonText == "."){

      if(_output.contains(".")){
        print("Already conatains a decimals");
        return;

      } else {
        _output = _output + buttonText;
      }

    } else if (buttonText == "="){

      num2 = double.parse(output);

      if(operand == "+"){
        _output = (num1 + num2).toString();
      }
      if(operand == "-"){
        _output = (num1 - num2).toString();
      }
      if(operand == "X"){
        _output = (num1 * num2).toString();
      }
      if(operand == "/"){
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";

    } else {

      _output = _output + buttonText;

    }

    print('num: '+_output);

    setState(() {
      
      output = double.parse(_output).toStringAsFixed(2);

    });

  }
  */