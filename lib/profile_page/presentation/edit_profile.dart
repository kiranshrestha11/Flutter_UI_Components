import 'package:ecommercelayout/profile_page/presentation/profile_page.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
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
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey[500],
                      foregroundImage: const NetworkImage(
                          "https://images.pexels.com/photos/2406949/pexels-photo-2406949.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    ),
                    Positioned(
                      right: 7,
                      top: 4,
                      child: InkWell(
                        onTap: () {
                          // showBottomSheet(context: context, builder: builder)
                        },
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Icon(
                            Icons.mode_edit,
                            size: 16,
                            color: Color(0xff363676),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: screenSize.height * 0.0625,
                child: const Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
