import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
      this.color = Colors.black,
      required this.weight,
      required this.size,
      this.align})
      : super(key: key);
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(color: color, fontWeight: weight, fontSize: size),
    );
  }
}
