import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeroTwentyOne extends StatelessWidget {
  const HeroTwentyOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.013),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              "https://images.freeimages.com/images/large-previews/6bd/laundry-1522596.jpg?fmt=webp&w=350",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          const Text(
            "Download us on google play and app store",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: h * 0.005,
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae blanditiis cum enim itaque iusto laboriosam laudantium libero magni odit, optio ratione sed suscipit vero, vitae!",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 14, height: 1.3, color: Colors.black45),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                icon: FaIcon(
                  FontAwesomeIcons.appStore,
                  size: w * 0.05,
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff009EF7),
                ),
                label: const Text(
                  "App Store",
                  style: TextStyle(
                      letterSpacing: -0.1,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: w * 0.05,
              ),
              ElevatedButton.icon(
                icon: FaIcon(
                  FontAwesomeIcons.googlePlay,
                  size: w * 0.04,
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff50CD89),
                ),
                label: const Text(
                  "Google play",
                  style: TextStyle(
                      letterSpacing: -0.1,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
