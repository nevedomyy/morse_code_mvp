import 'package:flutter/material.dart';


class Window extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final path1 = Path();
    final path2 = Path();
    final paint = Paint()
      ..color = Colors.white24
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;
    canvas.drawLine(Offset(14, 4), Offset(7, size.height-18), paint);
    canvas.drawLine(Offset(size.width-15, 7), Offset(size.width-3, size.height-12), paint);
    path1.moveTo(7, size.height-10);
    path1.quadraticBezierTo(size.width*0.8, size.height-25, size.width, size.height-13);
    canvas.drawPath(path1, paint);
    path2.moveTo(6, 5);
    path2.quadraticBezierTo(size.width*0.9, 21, size.width-12, 12);
    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}