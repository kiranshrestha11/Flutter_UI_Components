import 'package:flutter/material.dart';
import 'package:widget_mask/widget_mask.dart';

class HeroTen extends StatelessWidget {
  const HeroTen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.05),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            clipBehavior: Clip.none,
            children: [
              WidgetMask(
                blendMode: BlendMode.srcATop,
                childSaveLayer: true,
                mask: Image.network(
                  "https://images.freeimages.com/images/large-previews/6bd/laundry-1522596.jpg?fmt=webp&w=350",
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                child: Image.asset(
                  "assets/hero/mask1.png",
                ),
              ),
              Positioned(
                bottom: h * 0.018,
                right: -w * 0.083,
                child: SizedBox(
                  width: w * 0.31,
                  child: Card(
                    elevation: 3,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: h * 0.005),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.motion_photos_on),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "250+",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    letterSpacing: 0.1),
                              ),
                              Text(
                                "Projects Done",
                                style: TextStyle(
                                    height: 1,
                                    fontSize: 12,
                                    letterSpacing: -0.5),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: h * 0.02,
          ),
          const Text(
            "I'm User Interface Designer & Developer.",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          const Text(
            "Hello! I'm Julia, a freelance user interface designer & developer based in London. I’m very passionate about the work that I do.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, height: 1.2),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff019FF7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26))),
                child: const Text(
                  "Contact Me",
                  style: TextStyle(letterSpacing: -0.1, fontSize: 13),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff019FF7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26))),
                child: const Text(
                  "See My Works",
                  style: TextStyle(letterSpacing: -0.1, fontSize: 13),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
