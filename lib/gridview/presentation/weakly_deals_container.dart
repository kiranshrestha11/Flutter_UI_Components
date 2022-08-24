import 'dart:developer';

import 'package:flutter/material.dart';

class WeeklyDeals extends StatelessWidget {
  const WeeklyDeals({Key? key, required this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
        child: GestureDetector(
      onTap: () {
        log('tapped');
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10, left: 2.5),
        padding: const EdgeInsets.only(left: 12, top: 15),
        //width: size.width / 2.3,
        height: 260,
        decoration: BoxDecoration(
            color: const Color(0xffE6D8D1),
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(imgUrl))),
        child: const Text(
          "Weekly Deals",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
    ));
  }
}
