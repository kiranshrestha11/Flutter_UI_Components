import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconBoxFive extends StatelessWidget {
  const IconBoxFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height;
    // double w = MediaQuery.of(context).size.width;
    return Column(
      children: const [
        IconBoxFiveContainer(
          icon: FontAwesomeIcons.dumpster,
          title: "Retail & eCommerce",
          desc:
              "We build powerful custom e-commerce development solutions & marketplaces,social",
        ),
        IconBoxFiveContainerII(
          icon: FontAwesomeIcons.circleH,
          title: "Hospital & HealthCare",
          desc:
              "We provide complete solutions to the healthcare industry. Our IT solutions effectively",
        ),
        IconBoxFiveContainer(
          icon: FontAwesomeIcons.suitcaseRolling,
          title: "Travel & Tourism",
          desc:
              "Our agile Software solutions for the travel industry improve your tour & travel business ROI and lesson",
        ),
      ],
    );
  }
}

class IconBoxFiveContainer extends StatelessWidget {
  const IconBoxFiveContainer({
    Key? key,
    required this.desc,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final String desc;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
          left: w * 0.033, right: w * 0.033, bottom: h * 0.004, top: h * 0.006),
      padding: EdgeInsets.symmetric(horizontal: w * 0.045, vertical: h * 0.023),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50,
            color: const Color(0xff13375E),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xff181D33)),
          ),
          SizedBox(
            height: h * 0.005,
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

class IconBoxFiveContainerII extends StatelessWidget {
  const IconBoxFiveContainerII({
    Key? key,
    required this.desc,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final String desc;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
          left: w * 0.033, right: w * 0.033, bottom: h * 0.004, top: h * 0.006),
      padding: EdgeInsets.symmetric(horizontal: w * 0.045, vertical: h * 0.023),
      decoration: BoxDecoration(
          color: const Color(0xff13375E),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.white,
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: h * 0.005,
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
