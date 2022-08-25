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
                height: 220,
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
              Row(
                children: [
                  const CarasouelContainer(),
                  WeeklyDeals(
                    imgUrl: demoImg,
                  )
                ],
              ),
              GridView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                shrinkWrap: true,
                itemCount: products.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: size.width <= 500 ? 2 : 4,
                  childAspectRatio: 200 / 300,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
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
