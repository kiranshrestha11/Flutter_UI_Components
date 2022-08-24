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
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: size.width / 2.5,
                decoration: BoxDecoration(
                    color: const Color(0xffECEBED),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: NetworkImage(
                          imgUrl,
                        ))),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                price,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              const SizedBox(
                height: 0.5,
              ),
              Text(
                title,
                style: const TextStyle(color: Color(0xffB7B6B7)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
