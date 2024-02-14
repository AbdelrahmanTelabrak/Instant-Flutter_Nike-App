import 'package:flutter/material.dart';

Text centeredH1Text(String txt, bool isWhite){
  return Text(
    txt,
    textAlign: TextAlign.center,
    // maxLines: 1 ,
    style: TextStyle(
      color: isWhite? Colors.white : Colors.black,
      fontSize: isWhite? 34 : 32,
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w900
    ),
  );
}

Text h1Text(String txt, bool isWhite){
  return Text(
    txt,
    textAlign: TextAlign.center,
    // maxLines: 1 ,
    style: TextStyle(
        color: isWhite? Colors.white : Colors.black,
        fontSize: isWhite? 30 : 28,
        fontFamily: 'Raleway',
        fontWeight: FontWeight.w700
    ),
  );
}

Text paragraph1Text(String txt, bool isCentered){
  return Text(
    txt,
    textAlign: isCentered? TextAlign.center: TextAlign.start,
    style: TextStyle(
      color: const Color(0xff707B81),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      fontSize: isCentered? 16 : 14,
    ),
  );
}
Text paragraph2Text(String txt, bool isCentered){
  return Text(
    txt,
    textAlign: isCentered? TextAlign.center: TextAlign.start,
    style: TextStyle(
      color: const Color(0xffD8D8D8),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      fontSize: isCentered? 16 : 14,
    ),
  );
}

