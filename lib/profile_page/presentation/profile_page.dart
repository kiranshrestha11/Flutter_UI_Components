import 'dart:developer';

import 'package:ecommercelayout/profile_page/presentation/edit_profile.dart';
import 'package:ecommercelayout/profile_page/presentation/widgets/profile_feature.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    const String imageUrl =
        "https://images.pexels.com/photos/2406949/pexels-photo-2406949.jpeg?auto=compress&cs=tinysrgb&w=600";
    log(screenSize.height.toString());
    log(screenSize.width.toString());
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: const Color(0xff363676),
                  height: screenSize.height * 0.272,
                  width: screenSize.width,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(
                      top: screenSize.height * 0.04755,
                      left: screenSize.width * 0.02222,
                      right: screenSize.width * 0.02222),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -screenSize.height * 0.04076,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  contentPadding: const EdgeInsets.all(0),
                                  insetPadding: EdgeInsets.zero,
                                  content: Image.network(
                                    imageUrl,
                                    height: 300,
                                    width: 350,
                                    fit: BoxFit.cover,
                                  ),
                                ));
                      },
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.grey[500],
                        foregroundImage: const NetworkImage(imageUrl),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: screenSize.height * 0.0625,
                child: const Text(
                  "Profile",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenSize.height * 0.057065,
          ),
          const Text(
            "Kiran Shrestha",
            style: TextStyle(
                color: Color(0xff363676),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Kiranstha1679@gmail.com",
            style: TextStyle(
                color: Color(0xff363676),
                //fontWeight: FontWeight.w500,
                fontSize: 14),
          ),
          SizedBox(
            height: screenSize.height * 0.02989,
          ),
          ProfileFeature(
            text: "User Details",
            containerColor: const Color(0xffFFDDEB),
            icon: (Icons.person_outlined),
            iconColor: const Color(0xffBA8C9F),
            screenSize: screenSize,
          ),
          const SizedBox(
            height: 13,
          ),
          ProfileFeature(
            text: "Certificate",
            containerColor: const Color(0xffE2DFFE),
            icon: (Icons.school_outlined),
            iconColor: const Color(0xff9190BC),
            screenSize: screenSize,
          ),
          const SizedBox(
            height: 13,
          ),
          ProfileFeature(
            text: "Payment",
            containerColor: const Color(0xffF9E4C8),
            icon: (Icons.payment_outlined),
            iconColor: const Color(0xffE1B98A),
            screenSize: screenSize,
          ),
          const SizedBox(
            height: 13,
          ),
          ProfileFeature(
            text: "Documents",
            containerColor: const Color(0xffDDC9F8),
            icon: (Icons.article_outlined),
            iconColor: const Color(0xff8E6CBA),
            screenSize: screenSize,
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 50,
            width: screenSize.width - 70,
            child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(primary: const Color(0xff363676)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const EditProfile(),
                    ),
                  );
                },
                child: const Text(
                  "Edit",
                  style: TextStyle(
                      // color: Color(0xff363676),
                      //fontWeight: FontWeight.w500,
                      fontSize: 18),
                )),
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height); //start
    var firstStart = Offset(size.width / 2, size.height - 60); //contoller
    var fisrtEnd = Offset(size.width, size.height); //end
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, fisrtEnd.dx, fisrtEnd.dy);

    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
