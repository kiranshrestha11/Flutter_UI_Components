import 'package:flutter/material.dart';

class RatingStarCount extends StatelessWidget {
  const RatingStarCount({Key? key, required this.count}) : super(key: key);
  final double count;

  @override
  Widget build(BuildContext context) {
    if (count == 1) {
      return Row(
        children: [
          colorStar(),
          noColorStar(),
          noColorStar(),
          noColorStar(),
          noColorStar(),
        ],
      );
    } else if (count == 2) {
      return Row(children: [
        colorStar(),
        colorStar(),
        noColorStar(),
        noColorStar(),
        noColorStar(),
      ]);
    } else if (count == 3) {
      return Row(children: [
        colorStar(),
        colorStar(),
        colorStar(),
        noColorStar(),
        noColorStar(),
      ]);
    } else if (count == 4) {
      return Row(children: [
        colorStar(),
        colorStar(),
        colorStar(),
        colorStar(),
        noColorStar(),
      ]);
    } else {
      return Row(children: [
        colorStar(),
        colorStar(),
        colorStar(),
        colorStar(),
        colorStar(),
      ]);
    }
  }

  Icon noColorStar() {
    return Icon(
      Icons.star,
      size: 16,
      color: Colors.grey[400],
    );
  }

  Icon colorStar() {
    return const Icon(
      Icons.star,
      size: 16,
      color: Colors.amber,
    );
  }
}
