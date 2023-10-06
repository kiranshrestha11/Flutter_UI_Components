import 'package:flutter/material.dart';

class TimeLineTwo extends StatelessWidget {
  const TimeLineTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w,
      margin: EdgeInsets.symmetric(horizontal: w * 0.055, vertical: h * 0.01),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Title",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: h * 0.02,
        ),
        const Text(
          "Lorem ipsum",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 18, color: Colors.black87),
        ),
        SizedBox(
          height: h * 0.02,
        ),
        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt?",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black45),
          maxLines: 4,
          textAlign: TextAlign.left,
        ),
      ]),
    );
  }
}
