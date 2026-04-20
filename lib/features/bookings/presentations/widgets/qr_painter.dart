import 'package:flutter/material.dart';

class QRPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.black;

    canvas.drawRect(
      Rect.fromLTWH(20, 20, 60, 60),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}