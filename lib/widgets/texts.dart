import 'package:flutter/material.dart';

enum TextSize {
  h1_34,
  h1_32,
  h2_26,
  h2_20,
  paragraph_16,
  paragraph_12
}

extension TextSizeExtension on TextSize {
  double get value {
    switch (this) {
      case TextSize.h1_34:
        return 34.0;
      case TextSize.h1_32:
        return 32.0;
      case TextSize.h2_26:
        return 26.0;
      case TextSize.h2_20:
        return 20.0;
      case TextSize.paragraph_16:
        return 16.0;
      case TextSize.paragraph_12:
        return 12.0;
      default:
        throw Exception("Unknown TextSize");
    }
  }
}

Widget blackText(String txt, {Color color = Colors.black, double fontSize = 34.0, TextAlign align = TextAlign.start}){
  return Text(
    txt,
    textAlign: align,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w900,
    ),
  );
}

Widget boldText(String txt, {Color color = Colors.black, double fontSize = 36.0, TextAlign align = TextAlign.start}){
  return Text(
    txt,
    textAlign: align,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w700,
    ),
  );
}

Widget semiBoldText(String txt, {Color color = Colors.black, double fontSize = 26.0, TextAlign align = TextAlign.start}){
  return Text(
    txt,
    textAlign: align,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w600,
    ),
  );
}

Widget mediumText(String txt, {Color color = Colors.black, double fontSize = 16.0, TextAlign align = TextAlign.start}){
  return Text(
    txt,
    textAlign: align,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
  );
}

Widget paragraphText(String txt, {Color color = Colors.black, double fontSize = 16.0, TextAlign align = TextAlign.start}){
  return Text(
    txt,
    textAlign: align,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
  );
}

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

