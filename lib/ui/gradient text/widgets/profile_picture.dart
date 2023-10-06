import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //this container gives gradient background
    return Container(
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff01DCEE), Color(0xff01F4A3)])),

      //to Specify the radius of container
      child: CircleAvatar(
        radius: 48,
        backgroundColor:
            Colors.transparent, //transparent to show container gradient color
        child: Container(
          //this container holds image
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: NetworkImage(
                    "https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg")),
            shape: BoxShape.circle,
            border: Border.all(
                //giving border to container containing image
                color: Colors.black,
                width: 4,
                style: BorderStyle.solid),
          ),
        ),
      ),
    );
  }
}
