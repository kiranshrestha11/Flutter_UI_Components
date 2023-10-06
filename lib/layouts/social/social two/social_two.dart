import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialTwo extends StatelessWidget {
  const SocialTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SocialTwoContainer(
            icon: FontAwesomeIcons.facebookF,
            color: Color(0xff3b5998),
          ),
          SocialTwoContainer(
            icon: FontAwesomeIcons.google,
            color: Color(0xffDD4A38),
          ),
          SocialTwoContainer(
            icon: FontAwesomeIcons.twitter,
            color: Color(0xff1DA0F3),
          ),
          SocialTwoContainer(
            icon: FontAwesomeIcons.instagram,
            color: Color(0xffE1306C),
          ),
          SocialTwoContainer(
            icon: FontAwesomeIcons.youtube,
            color: Color(0xffFE0100),
          ),
          SocialTwoContainer(
            icon: FontAwesomeIcons.linkedin,
            color: Color(0xff0176B5),
          ),
        ],
      ),
    );
  }
}

class SocialTwoContainer extends StatelessWidget {
  final IconData icon;
  final Color color;
  const SocialTwoContainer({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w * 0.01389),
      alignment: Alignment.center,
      height: h * 0.05,
      width: w * 0.1055,
      //padding: const EdgeInsets.all(8),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: FaIcon(
        icon,
        color: Colors.white,
        size: 16,
      ),
    );
  }
}
