import 'package:ecommercelayout/scrollable_bar/presentation/widgets/rating_star.dart';
import 'package:flutter/material.dart';

class OverViewPage extends StatefulWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  State<OverViewPage> createState() => _OverViewPageState();
}

class _OverViewPageState extends State<OverViewPage> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Image.asset(
            "assets/images/earpod.webp",
            width: size.width,
            height: 320,
            fit: BoxFit.cover,
          ),
          ///////////////////////////////////////////////////////////////////////
          Container(
            padding: const EdgeInsets.all(10),
            height: 240,
            width: size.width,
            color: const Color(0xffE5E4E4),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
                    style: TextStyle(fontSize: 17),
                  ),
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: 'Rs.',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4C4C4C),
                            fontFamily: 'Product Sans'),
                      ),
                      TextSpan(
                        text: ' 900',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4C4C4C),
                            fontFamily: 'Product Sans'),
                      )
                    ]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xffFEF9F5),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.confirmation_num_outlined,
                                color: Color(0xffF95406),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Upto Rs. 2000 Off",
                                style: TextStyle(
                                    color: Color(0xffF95406),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const Text(
                            "5 Vouchers",
                            style: TextStyle(
                                color: Color(0xffF95406),
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const RatingStarCount(count: 4),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isFav = !isFav;
                              });
                            },
                            icon: isFav == true
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : const Icon(Icons.favorite_border_outlined),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share_outlined),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.reviews_outlined),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color(0xffF4F4F5),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Text(
                          "94% Positive Review",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          ///////////////////////////////////////////////////////////////////////
          Container(
            padding: const EdgeInsets.all(10),
            //height: 600,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text("Specifications",
                          style:
                              TextStyle(color: Colors.grey[500], fontSize: 16)),
                    ),
                    const SizedBox(
                      width: 220,
                      child: Text("Brand, Usage, SKU"),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1.5,
                ),
                /////////////////////////////////////////////////////////////////
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text("Delivery",
                              style: TextStyle(
                                  color: Colors.grey[500], fontSize: 16)),
                        ),
                        SizedBox(
                          width: 220,
                          //color: Colors.blue,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Bagmati Province, Kathmandu...",
                                style: TextStyle(color: Color(0xffFF340C)),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color(0xff10A08C))),
                                child: const Text("Fulfilled by Daraz",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff10A08C))),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                      width: 160,
                                      child:
                                          Text("Standard Delivery, Tommorrow")),
                                  Text(
                                    "Rs. 80",
                                    style: TextStyle(
                                        fontSize: 18, color: Color(0xffFF340C)),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Enjoy Free Shipping promotion with minimum spend of Rs.2000",
                                style: TextStyle(color: Colors.grey[500]),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1.5,
                    ),
                    ///////////////////////////////////////////
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text("Services",
                              style: TextStyle(
                                  color: Colors.grey[500], fontSize: 16)),
                        ),
                        SizedBox(
                          width: 220,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "7 Days Returns",
                                style: TextStyle(),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Change of mind is not applicable",
                                style: TextStyle(color: Colors.grey[500]),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "Warranty not available",
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1.5,
                    ),
                    ///////////////////////////////////////////
                  ],
                ),
              ],
            ),
          ),
        ]);
  }
}
