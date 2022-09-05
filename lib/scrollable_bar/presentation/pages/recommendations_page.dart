import 'package:ecommercelayout/gridview/data/model/product_model.dart';
import 'package:ecommercelayout/gridview/presentation/arrival_container.dart';
import 'package:flutter/material.dart';

class RecommendationPage extends StatelessWidget {
  const RecommendationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 8,
      ),
      const Text(
        "From The Same Store",
        style: TextStyle(fontSize: 18),
      ),
      const SizedBox(
        height: 8,
      ),
      Container(
        margin: const EdgeInsets.only(left: 14),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: products.length,
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.7),
            itemBuilder: (context, index) {
              return ArrivalContainer(
                price: products[index].price,
                title: products[index].title,
                imgUrl: products[index].imgUrl,
                rating: products[index].rating,
              );
            }),
      )
    ]);
  }
}

// ArrivalContainer(
//             price: "Rs200",
//             title: "Nivea Men BodyWash",
//             imgUrl:
//                 "https://m.media-amazon.com/images/I/51CiQj71YzL._SY355_.jpg")
