import 'package:flutter/material.dart';

class CircleProgress extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Drawing circle
    Paint circle = Paint()
      ..strokeWidth = 28
      ..color = Colors.white.withOpacity(0.2)
      ..style = PaintingStyle.stroke;

    Offset center = Offset((size.width / 2), size.height / 2);
    double radius = 60;
    canvas.drawCircle(center, radius, circle);

    //Drawing Arc
    // Paint arc = Paint()
    //   ..strokeWidth = 5
    //   ..color = Colors.purple
    //   ..style = PaintingStyle.stroke
    //   ..strokeCap = StrokeCap.round;

    // double angel = 2 * pi * (10 / 100);
    // canvas.drawArc(Rect.fromCircle(center: center, radius: radius), pi / 2,
    //     angel, false, arc);

    //First Arc
    Paint arc1 = Paint()
      ..strokeWidth = 28
      ..color = const Color(0xffFBF0B8)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius), 0, 0.7, false, arc1);

    //Second Arc
    Paint arc2 = Paint()
      ..strokeWidth = 28
      ..color = Color(0xffD07581)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius), 0.8, 1, false, arc2);
    Paint arc4 = Paint()
      ..strokeWidth = 28
      ..color = Color(0xff497578)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius), 2.9, 0.7, false, arc4);

    Paint arc3 = Paint()
      ..strokeWidth = 28
      ..color = Color(0xff81244F)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius), 360, 0.9, false, arc3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
