import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TeamFourListview extends StatelessWidget {
  const TeamFourListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
      child: SizedBox(
        height: h * 0.35,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [TeamFour(), TeamFourII()],
        ),
      ),
    );
  }
}

class TeamFour extends StatelessWidget {
  const TeamFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(2),
      padding: EdgeInsets.symmetric(vertical: h * 0.019),
      color: Colors.white,
      width: w * 0.49,
      child: Column(children: [
        Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff005286), Color(0xff004280)])),

          //to Specify the radius of container
          child: CircleAvatar(
            radius: w * 0.189,
            backgroundColor: Colors
                .transparent, //transparent to show container gradient color
            child: ClipOval(
              child: Container(
                //this container holds image

                height: h * 0.165,
                width: w * 0.36,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg",
                      )),
                  //shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: h * 0.008,
        ),
        const Text(
          "Corris Shrestha",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        SizedBox(
          height: h * 0.002,
        ),
        const Text(
          "Developer",
          style: TextStyle(
              color: Color(0xff005286),
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.facebook,
                color: Color(0xff005286),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.twitter),
              color: const Color(0xff005286),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.youtube),
              color: const Color(0xff005286),
            ),
          ],
        )
      ]),
    );
  }
}

class TeamFourII extends StatelessWidget {
  const TeamFourII({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(2),
      padding: EdgeInsets.symmetric(vertical: h * 0.019),
      color: Colors.white,
      width: w * 0.49,
      child: Column(children: [
        //this container gives gradient background
        Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff00d9f5), Color(0xff00F5A0)])),

          //to Specify the radius of container
          child: CircleAvatar(
            radius: w * 0.189,
            backgroundColor: Colors
                .transparent, //transparent to show container gradient color
            child: ClipOval(
              child: Container(
                //this container holds image

                height: h * 0.165,
                width: w * 0.36,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg")),
                  //shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: h * 0.008,
        ),
        const Text(
          "Corris Shrestha",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        SizedBox(
          height: h * 0.002,
        ),
        const Text(
          "Developer",
          style: TextStyle(
              color: Color(0xff005286),
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.facebook,
                color: Color(0xff4267B2),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.twitter),
              color: const Color(0xff00acee),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.youtube),
              color: const Color(0xffFF0000),
            ),
          ],
        )
      ]),
    );
  }
}
