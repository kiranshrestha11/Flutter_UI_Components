import 'package:flutter/material.dart';

class PopularCourse extends StatefulWidget {
  const PopularCourse({Key? key, this.child = const Text('')})
      : super(key: key);
  final Widget child;

  @override
  State<PopularCourse> createState() => _PopularCourseState();
}

class _PopularCourseState extends State<PopularCourse> {
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    // log(tapped.toString());
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return SizedBox(
      width: w * 0.555,
      height: h * 0.4,
      child: Card(
        elevation: 3,
        margin: const EdgeInsets.all(6),
        semanticContainer: false,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "https://images.freeimages.com/images/large-previews/6bd/laundry-1522596.jpg?fmt=webp&w=350",
                    height: h * 0.19,
                    width: w * 0.555,
                    fit: BoxFit.cover,
                  ),
                ),
                widget.child,
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: w * 0.03, vertical: h * 0.0108),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Level 1",
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                        Text(
                          "Rs 500",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.amber[400],
                              fontSize: 16),
                        )
                      ],
                    ),
                    const Text(
                      "Mathematics Table",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff005286),
                          fontSize: 16),
                    ),
                    const Text(
                      "32 Articles, 5 Quizes, 7 Tests",
                      style: TextStyle(
                          fontSize: 12, wordSpacing: -1, color: Colors.black45),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: w * 0.289,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff005286),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: const Text(
                              "Enroll Now",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              tapped = !tapped;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  width: 1.5,
                                  color: tapped ? Colors.red : Colors.black45),
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: tapped ? Colors.red : Colors.black45,
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendedText extends StatelessWidget {
  const RecommendedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: h * 0.02),
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: w * 0.023, vertical: h * 0.005),
        decoration: const BoxDecoration(
            color: Color(0xff005286),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(8), bottomRight: Radius.circular(8))),
        child: const Text(
          "Recommended",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
