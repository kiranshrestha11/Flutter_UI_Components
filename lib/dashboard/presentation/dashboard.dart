import 'package:flutter/material.dart';

import '../../gridview/data/model/product_model.dart';
import '../../gridview/presentation/arrival_container.dart';
import '../../gridview/presentation/carasouel_container.dart';
import '../../gridview/presentation/for_you_container.dart';
import '../../gridview/presentation/weakly_deals_container.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F7F7),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.31,
                //220,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ArrivalContainer(
                          price: products[index].price,
                          title: products[index].title,
                          imgUrl: products[index].imgUrl);
                    }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.025,
                ),
                child: Row(
                  children: [
                    const CarasouelContainer(),
                    SizedBox(
                      width: size.width * 0.015,
                    ),
                    WeeklyDeals(
                      imgUrl: demoImg,
                    )
                  ],
                ),
              ),
              GridView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.025,
                  vertical: size.height * 0.008,
                ),
                shrinkWrap: true,
                itemCount: products.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  //size.width <= 500 ? 2 : 4
                  childAspectRatio: size.height / 1227,
                  crossAxisSpacing: size.width * 0.015,
                  mainAxisSpacing: size.width * 0.015,
                ),
                itemBuilder: (context, index) {
                  return ForYou(
                    imgUrl: products[index].imgUrl,
                    moq: products[index].moq.toString(),
                    title: products[index].title,
                    price: products[index].price,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}



//Donot Delete this Code.