import 'dart:io';

import 'package:ecommercelayout/profile_page/presentation/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    } on PlatformException {
      const Text("Failed to pick image.");
    }
  }

  String imageUrl = "assets/images/no_profile.jpg";

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
                    image != null
                        ? ClipOval(
                            child: Image.file(
                              image!,
                              fit: BoxFit.cover,
                              height: 120,
                              width: 120,
                            ),
                          )
                        : ClipOval(
                            child: Image.asset(
                              imageUrl,
                              // color: Colors.grey,
                              // colorBlendMode: BlendMode.color,
                              fit: BoxFit.cover,
                              height: 120,
                              width: 120,
                            ),
                          ),
                    Positioned(
                      right: 7,
                      top: 4,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        width: screenSize.width - 20,
                                        height: 45,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: const Color(0xff363676)),
                                          onPressed: () {
                                            pickImage(ImageSource.gallery);
                                          },
                                          child: const Text("From Gallery"),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      SizedBox(
                                        width: screenSize.width - 20,
                                        height: 45,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: const Color(0xff363676)),
                                          onPressed: () {
                                            pickImage(ImageSource.camera);
                                          },
                                          child: const Text("Open Camera"),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                    ],
                                  ));
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
