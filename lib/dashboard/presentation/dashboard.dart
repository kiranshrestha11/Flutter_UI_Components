import 'package:flutter/material.dart';

import '../../gridview/data/model/product_model.dart';
import '../../gridview/presentation/arrival_container.dart';
import '../../gridview/presentation/carasouel_container.dart';
import '../../gridview/presentation/weakly_deals_container.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 220,
                child: ListView.builder(
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
                  //CarasouelContainer(),
                  WeeklyDeals(
                    imgUrl: demoImg,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
