import 'package:flutter/material.dart';
import 'package:ecommercelayout/layouts/buy%20tablet%20program/model/buy_tablet_program_model.dart';

import 'widgets/tablet_program.dart';

class BuyTablet extends StatelessWidget {
  const BuyTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: [
        Card(
          elevation: 5,
          margin:
              EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.016),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Buy Tablet Program",
                      style: TextStyle(
                          color: Color(0xff005286),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text("View All",
                        style: TextStyle(
                          color: Colors.amberAccent,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
                SizedBox(
                  height: h * 0.6,
                  child: GridView.builder(
                    itemCount: programs.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: h / w * 0.3,
//0.64
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                    itemBuilder: (context, index) => TabletProgram(
                        level: programs[index].level,
                        imgUrl: programs[index].imgUrl),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircleAvatar(
                radius: 16,
                backgroundColor: Color(0xff005286),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              CircleAvatar(
                radius: 16,
                backgroundColor: Color(0xff005286),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
