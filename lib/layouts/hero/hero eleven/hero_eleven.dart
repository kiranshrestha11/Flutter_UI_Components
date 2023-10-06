import 'package:flutter/material.dart';

class HeroEleven extends StatelessWidget {
  const HeroEleven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          color: const Color(0xffFFF6F4),
          padding:
              EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.0278),
          child: Column(children: [
            Image.network(
                "https://images.freeimages.com/images/large-previews/6bd/laundry-1522596.jpg?fmt=webp&w=350"),
            SizedBox(
              height: h * 0.02,
            ),
            const Text(
              "Creative. Smart. Awesome.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            const Text(
              "We specialize in web, mobile and identity design. We love to turn ideas into beautiful things.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, height: 1.3),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff009EF7),
                  ),
                  child: const Text(
                    "See Projects",
                    style: TextStyle(letterSpacing: -0.1, fontSize: 13),
                  ),
                ),
                SizedBox(
                  width: w * 0.05,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff50CD89),
                  ),
                  child: const Text(
                    "Learn More",
                    style: TextStyle(letterSpacing: -0.1, fontSize: 13),
                  ),
                ),
              ],
            )
          ]),
        ),
        const HeroElevenContainer(
          color: Color(0xffEB8C95),
          title: "Content Marketing",
          icon: Icons.inventory_2,
        ),
        const HeroElevenContainer(
          color: Color(0xff98DECB),
          title: "Social Engagement",
          icon: Icons.question_answer,
        ),
        const HeroElevenContainer(
          color: Color(0xffFEDC79),
          title: "Identify & Branding",
          icon: Icons.payment,
        ),
        const HeroElevenContainer(
          color: Color(0xff6FC9FA),
          title: "Product design",
          icon: Icons.redeem,
        ),
      ],
    );
  }
}

class HeroElevenContainer extends StatelessWidget {
  const HeroElevenContainer({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final Color color;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
          left: w * 0.033, right: w * 0.033, bottom: h * 0.004, top: h * 0.006),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4),
              topRight: Radius.circular(4),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: w * 0.041, vertical: h * 0.013),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: color,
                ),
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
                  style: TextStyle(fontSize: 13, color: Colors.black38),
                ),
                SizedBox(
                  height: h * 0.005,
                ),
                Text(
                  "Learn More",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 12, color: color),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(9),
                    bottomRight: Radius.circular(9))),
            height: h * 0.005,
          )
        ],
      ),
    );
  }
}
