import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.color, required this.text})
      : super(key: key);
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 11,
          width: 11,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(2)),
        ),
        const SizedBox(width: 10),
        Text(text,
            style: const TextStyle(
                color: Color(0xffB2BDCC),
                fontSize: 12,
                fontWeight: FontWeight.w400))
      ],
    );
  }
}
