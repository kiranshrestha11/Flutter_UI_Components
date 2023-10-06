import 'package:flutter/material.dart';

class TeamOne extends StatelessWidget {
  const TeamOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: w * 0.05),
      child: SizedBox(
        height: h * 0.3,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          children: [
            const MentorCard(),
            SizedBox(
              width: w * 0.03,
            ),
            const MentorCard(),
          ],
        ),
      ),
    );
  }
}

class MentorCard extends StatelessWidget {
  const MentorCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Card(
      color: Colors.white,
      elevation: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            "https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg",
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: h * 0.003,
          ),
          const Text(
            "Kiran Shrestha",
            style: TextStyle(
                color: Color(0xff005286),
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
          SizedBox(
            height: h * 0.003,
          ),
          const Text(
            "Developer",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          SizedBox(
            height: h * 0.01,
          )
        ],
      ),
    );
  }
}
