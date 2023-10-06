import 'package:flutter/material.dart';

class TimeLineThree extends StatelessWidget {
  const TimeLineThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      width: w,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "How We Do It?",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          const Text(
            "We make your spending stress-free for you to have the perfect control.",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          doItContainer(w, h, "01", "Concept",
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
          doItContainer(w, h, "02", "Prepare",
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
          doItContainer(w, h, "03", "Retouch",
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
          doItContainer(w, h, "04", "Finalize",
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        ],
      ),
    );
  }

  SizedBox doItContainer(
      double w, double h, String no, String title, String text) {
    return SizedBox(
      width: w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: const Color(0xff019FF7),
            child: Text(
              no,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: h * 0.005,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: h * 0.02,
          ),
        ],
      ),
    );
  }
}
