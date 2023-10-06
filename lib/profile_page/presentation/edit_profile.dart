import 'dart:io';

import 'package:ecommercelayout/profile_page/presentation/profile_page.dart';
import 'package:ecommercelayout/profile_page/presentation/widgets/edit_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

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

      final imgPermanent = await saveImagePermanently(image.path);
      setState(() {
        this.image = imgPermanent;
      });
    } on PlatformException {
      const Text("Failed to pick image.");
    }
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');
    return File(imagePath).copy(image.path);
  }

  String imageUrl = "assets/images/no_profile.jpg";

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SizedBox(
            height: screenSize.height,
            width: screenSize.width,
            child: Column(
              //mainAxisSize: MainAxisSize.min,
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
                                                    backgroundColor:
                                                        const Color(
                                                            0xff363676)),
                                                onPressed: () {
                                                  pickImage(
                                                      ImageSource.gallery);
                                                },
                                                child:
                                                    const Text("From Gallery"),
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            SizedBox(
                                              width: screenSize.width - 20,
                                              height: 45,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(
                                                            0xff363676)),
                                                onPressed: () {
                                                  pickImage(ImageSource.camera);
                                                },
                                                child:
                                                    const Text("Open Camera"),
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
                                    shape: BoxShape.circle,
                                    color: Colors.white),
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
                const SizedBox(
                  height: 35,
                ),
                const EditForm(),
                const Spacer(),
                SizedBox(
                  height: screenSize.height * 0.0679,
                  width: screenSize.width - 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff363676)),
                      onPressed: () {},
                      child: const Text(
                        "Save",
                        style: TextStyle(fontSize: 16),
                      )),
                ),
                SizedBox(
                  height: screenSize.height * 0.03434,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
