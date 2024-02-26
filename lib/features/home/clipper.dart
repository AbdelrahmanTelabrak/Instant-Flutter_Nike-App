import 'package:flutter/material.dart';

class HomeClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0,0);
    path_0.quadraticBezierTo(size.width*-0.1193447,size.height*0.8695067,size.width*0.0364078,size.height*0.8688341);
    path_0.cubicTo(size.width*0.0347087,size.height*0.9039910,size.width*0.4340534,size.height*0.8849103,size.width*0.3907767,size.height*0.9080717);
    path_0.cubicTo(size.width*0.4118447,size.height*0.9437108,size.width*0.4190534,size.height*0.9508632,size.width*0.5024272,size.height*0.9529148);
    path_0.cubicTo(size.width*0.5843932,size.height*0.9496861,size.width*0.5944417,size.height*0.9437668,size.width*0.6114806,size.height*0.9081502);
    path_0.cubicTo(size.width*0.5610922,size.height*0.8849664,size.width*0.9655097,size.height*0.8982063,size.width*0.9635922,size.height*0.8688341);
    path_0.quadraticBezierTo(size.width*1.1462621,size.height*0.8674552,size.width,0);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

  
}