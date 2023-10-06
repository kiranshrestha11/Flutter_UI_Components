import 'package:flutter/material.dart';

class TabletProgram extends StatelessWidget {
  final int level;
  final String imgUrl;
  const TabletProgram({
    Key? key,
    required this.level,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w * 0.38,
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Image.network(
            imgUrl,
            height: h * 0.18,
            //width: 400,
            fit: BoxFit.fill,
          ),
          Text(
            "Level $level",
            style: const TextStyle(
                color: Colors.black45, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Tablet Program for UKG",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff005286),
                fontWeight: FontWeight.bold,
                fontSize: 14),
          )
        ],
      ),
    );
  }
}
