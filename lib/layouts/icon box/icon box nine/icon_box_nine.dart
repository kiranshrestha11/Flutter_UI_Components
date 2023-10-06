import 'package:flutter/material.dart';

class IconBoxNine extends StatelessWidget {
  const IconBoxNine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: w * 0.0389, vertical: h * 0.01),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "OUR SERVICES",
            style:
                TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          RichText(
            text: const TextSpan(
                text: "Best Solutions ",
                style: TextStyle(
                    color: Color(0xff50CD89),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                    fontSize: 20),
                children: [
                  TextSpan(
                    text: "For your Business",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ]),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          const IconBoxNineContainer(title: "Heading"),
          const IconBoxNineContainer(title: "Strategy")
        ],
      ),
    );
  }
}

class IconBoxNineContainer extends StatelessWidget {
  const IconBoxNineContainer({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: h * 0.004, top: h * 0.01),
      decoration: BoxDecoration(
          color: Colors.grey[200]!.withOpacity(0.5),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff50CD89).withOpacity(0.3),
              borderRadius: const BorderRadius.only(),
            ),
            height: h * 0.003,
          ),
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.005),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: h * 0.005,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                const Text(
                  "Nulla vitae elit libero, a pharetra augue. Donec id elit non miporta gravida at eget metus cras justo",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 13, color: Colors.black38),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "More >",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color(0xff009EF7)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
