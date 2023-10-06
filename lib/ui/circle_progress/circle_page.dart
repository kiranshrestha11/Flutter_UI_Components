import 'package:flutter/material.dart';
import 'package:ecommercelayout/ui/circle_progress/circle_progress.dart';
import 'package:ecommercelayout/ui/circle_progress/item.dart';

class CirclePage extends StatefulWidget {
  const CirclePage({Key? key}) : super(key: key);

  @override
  State<CirclePage> createState() => _CirclePageState();
}

class _CirclePageState extends State<CirclePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.all(30),
      //height: 360,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: const Color(0xff0f1722),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomPaint(
                foregroundPainter: CircleProgress(),
                child: Container(
                  color: Colors.transparent,
                  width: 150,
                  height: 150,
                  child: const Center(
                      child: Text(
                    "77%",
                    style: TextStyle(
                        color: Color(0xff9FAFC6),
                        fontSize: 28,
                        fontWeight: FontWeight.w700),
                  )),
                ),
              ),
              SizedBox(
                width: 97,
                height: 75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Item(color: Color(0xff497578), text: "Documents"),
                    Item(color: Color(0xff80244F), text: "Videos"),
                    Item(color: Color(0xffD07581), text: "Photos"),
                    Item(color: Color(0xffFBF0B8), text: "Music"),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 25),
          const Text(
            "Storage of your device",
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Used Storage",
                    style: TextStyle(
                        color: Color(0xff4D607A),
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 60,
                        child: Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: const [
                            CircleAvatar(
                              backgroundColor: Color(0xff497578),
                              radius: 11,
                            ),
                            Positioned(
                              left: 12,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff80244F),
                                radius: 11,
                              ),
                            ),
                            Positioned(
                              left: 24,
                              child: CircleAvatar(
                                backgroundColor: Color(0xffD07581),
                                radius: 11,
                              ),
                            ),
                            Positioned(
                              left: 36,
                              child: CircleAvatar(
                                backgroundColor: Color(0xffFBF0B8),
                                radius: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        "137GB",
                        style: TextStyle(
                            color: Color(0xffB3C2D8),
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  )
                ],
              ),
              CircleAvatar(
                radius: 26,
                backgroundColor: const Color(0xff192434),
                child: IconButton(
                  icon: const Icon(
                    Icons.settings,
                    size: 25,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
