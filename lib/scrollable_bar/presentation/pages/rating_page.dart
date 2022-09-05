import 'package:ecommercelayout/scrollable_bar/data/model/rating_model.dart';
import 'package:ecommercelayout/scrollable_bar/presentation/widgets/rating_star.dart';
import 'package:flutter/material.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  //double rating = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ratings & Reviews ( ${ratingList.length} )",
                style: TextStyle(color: Colors.grey[500], fontSize: 18),
              ),
              const Text(
                "View All",
                style: TextStyle(color: Color(0xffFC6701)),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ratingList.length,
              itemBuilder: (context, index) {
                return RatingContainer(
                  name: ratingList[index].name,
                  comment: ratingList[index].name,
                  time: ratingList[index].time,
                  rating: ratingList[index].rating,
                  img1: ratingList[index].img1,
                  img2: ratingList[index].img2,
                  img3: ratingList[index].img3,
                );
              })
        ],
      ),
    );
  }
}

class RatingContainer extends StatelessWidget {
  final String name, comment;
  final double rating;
  final String? img1, img2, img3, time;
  const RatingContainer({
    Key? key,
    required this.name,
    required this.comment,
    required this.rating,
    this.img1,
    this.img2,
    this.img3,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$name$time",
                style: TextStyle(color: Colors.grey[500]),
              ),
              RatingStarCount(
                count: rating,
              ),
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Text(comment),
          const SizedBox(
            height: 8,
          ),
          img1!.isNotEmpty && img2!.isEmpty && img3!.isEmpty
              ? ImageRow(
                  img1: img1,
                )
              : img1!.isNotEmpty && img2!.isNotEmpty && img3!.isEmpty
                  ? Row(
                      children: [
                        ImageRow(img1: img1),
                        ImageRow(img1: img2),
                      ],
                    )
                  : img1!.isNotEmpty && img2!.isNotEmpty && img3!.isNotEmpty
                      ? Row(
                          children: [
                            ImageRow(img1: img1),
                            ImageRow(img1: img2),
                            ImageRow(img1: img3)
                          ],
                        )
                      : Row(),
        ],
      ),
    );
  }
}

class ImageRow extends StatelessWidget {
  const ImageRow({
    Key? key,
    required this.img1,
  }) : super(key: key);

  final String? img1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            img1 ?? "",
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 8,
        )
      ],
    );
  }
}




 // RatingBar.builder(
              //     minRating: 5,
              //     maxRating: 5,
              //     itemSize: 14,
              //     itemBuilder: (context, index) {
              //       return const Icon(
              //         Icons.star_outlined,
              //         color: Colors.amber,
              //       );
              //     },
              //     onRatingUpdate: (rating) {
              //       // setState(() {
              //       //   this.rating = rating;
              //       // });
              //     }),

