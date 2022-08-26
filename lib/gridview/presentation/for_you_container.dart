import 'dart:developer';

import 'package:flutter/material.dart';

class ForYou extends StatelessWidget {
  const ForYou(
      {Key? key,
      required this.imgUrl,
      required this.title,
      required this.price,
      required this.moq})
      : super(key: key);
  final String imgUrl, title, price, moq;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        log({size.height * 0.35}.toString());
      },
      child: Container(
        height: size.height * 0.35,
        padding: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: const Color(0xffD7F6DA),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
                flex: 8,
                fit: FlexFit.tight,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.contain,
                    //height: 5,
                  ),
                )),
            Flexible(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(left: size.width * 0.0203),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: Text(
                            title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 16.5),
                          )),
                      Flexible(
                          fit: FlexFit.tight,
                          child: Text(
                            price,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          )),
                      Flexible(
                          fit: FlexFit.tight,
                          child: Text(
                            "$moq(MOQ)",
                            style: const TextStyle(
                                fontSize: 11, color: Color(0xffA1A0A1)),
                          ))
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
