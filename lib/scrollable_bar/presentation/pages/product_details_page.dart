import 'package:ecommercelayout/scrollable_bar/data/model/product_detail_model.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text("Product Details"),
          const SizedBox(
            height: 10,
          ),
          ...prodDetailList.map((e) => Ink(
                //color: Colors.red,
                child: SizedBox(
                  width: size.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            size: 8,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(e.brand)
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            size: 8,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(e.title)
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.circle, size: 8),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(e.color)
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.circle, size: 8),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(e.material)
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.circle, size: 8),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(e.safety)
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.circle, size: 8),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(e.description)
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.circle, size: 8),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(e.durability)
                        ],
                      ),
                      const Text(
                          "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.")
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
