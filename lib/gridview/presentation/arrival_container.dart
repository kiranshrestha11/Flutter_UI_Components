import 'dart:developer';

import 'package:flutter/material.dart';

class ArrivalContainer extends StatelessWidget {
  const ArrivalContainer(
      {Key? key,
      required this.price,
      required this.title,
      required this.imgUrl})
      : super(key: key);
  final String price, title, imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            log(size.height.toString());
          },
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.025, vertical: size.height * 0.0117),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.2038,
                  width: size.width <= 400
                      ? size.width / 2.5
                      : size.width * 0.4, //size.width / 2.5,
                  decoration: BoxDecoration(
                    color: const Color(0xffE5E4E4),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                        imgUrl,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.0058,
                ),
                Text(
                  price,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 18),
                ),
                SizedBox(
                  height: size.height * 0.000587,
                ),
                Text(
                  title,
                  style: const TextStyle(color: Color(0xffB7B6B7)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
