import 'package:flutter/cupertino.dart';
import 'package:ecommercelayout/layouts/popular%20courses/widgets/popular_courses_container.dart';

class PopularCourseListview extends StatelessWidget {
  const PopularCourseListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return SizedBox(
      height: h * 0.4,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          PopularCourse(
            child: RecommendedText(),
          ),
          PopularCourse(),
          PopularCourse(),
          PopularCourse(),
          PopularCourse(),
        ],
      ),
    );
  }
}
