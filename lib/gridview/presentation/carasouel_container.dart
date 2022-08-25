import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommercelayout/gridview/data/model/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';

final indexProvider = StateProvider<int>((ref) {
  return 0;
});

class CarasouelContainer extends StatefulWidget {
  const CarasouelContainer({Key? key}) : super(key: key);

  @override
  State<CarasouelContainer> createState() => _CarasouelContainerState();
}

class _CarasouelContainerState extends State<CarasouelContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          log("tapped");
        },
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 2),
          decoration: BoxDecoration(
              color: const Color(0xffE6D8D1),
              borderRadius: BorderRadius.circular(5)),
          child: Consumer(builder: (context, ref, child) {
            final carouselIndex = ref.watch(indexProvider.notifier);
            return Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        carouselIndex.state = index;
                      },
                      autoPlay: true,
                      height: 260,
                      aspectRatio: 3,
                      viewportFraction: 1),
                  items: carasouelList
                      .map(
                        (e) => Image.network(
                          e.imgUrl,
                          width: 100,
                          fit: BoxFit.contain,
                        ),
                      )
                      .toList(),
                ),
                Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: DotsIndicator(
                      position: ref.watch(indexProvider).toDouble(),
                      dotsCount: carasouelList.length,
                      decorator: const DotsDecorator(
                          activeColor: Color(0xffB36D27),
                          spacing: EdgeInsets.all(2),
                          size: Size.square(6),
                          activeSize: Size.square(7)),
                    ))
              ],
            );
          }),
        ),
      ),
    );
  }
}
