import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentIndicator extends StatefulWidget {
  const PercentIndicator({Key? key}) : super(key: key);

  @override
  State<PercentIndicator> createState() => _PercentIndicatorState();
}

class _PercentIndicatorState extends State<PercentIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      //height: 479,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Top AppBar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  size: 30,
                ),
                onPressed: () {},
              )
            ],
          ),
          const SizedBox(height: 10),
          //Percent Indicator
          CircularPercentIndicator(
            animation: true,
            animationDuration: 1000,
            radius: 90,
            lineWidth: 25,
            curve: Curves.linearToEaseOut,
            progressColor: Color.lerp(
                const Color(0xffeb3349), const Color(0xffF45C43), 0.15),
            percent: 0.7,
            backgroundColor: const Color(0xffF2F2F2),
            circularStrokeCap: CircularStrokeCap.round,
            center: const Text(
              "70%",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(height: 10),

          const Text(
            "My storage",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 30),
          //bottom Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: const Color(0xffF25045),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      const SizedBox(width: 10),
                      const Text("Used",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500))
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: const Color(0xfff2f2f2),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      const SizedBox(width: 10),
                      const Text("Total Space",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500))
                    ],
                  )
                ],
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side:
                          const BorderSide(width: 2, color: Color(0xffF14B46))),
                  onPressed: () {},
                  child: const Text("OUTLINE",
                      style: TextStyle(
                          color: Color(0xffF14B46),
                          fontSize: 13,
                          fontWeight: FontWeight.w700)))
            ],
          )
        ],
      ),
    );
  }
}
