import 'package:ecommercelayout/on%20boarding%201/model/on_boarding_model.dart';
import 'package:flutter/material.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [Color(0xff1A1A1E), Color(0xff1B1A16)])),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    //color: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,

                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              ...ProfileModel.profileList
                                  .map((e) => ImageContainer(
                                        opacity: e.id == 2 ? 0.8 : 0.3,
                                        image: e.profileUrl,
                                        text: e.name,
                                      )),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 80,
                              ),
                              ...ProfileModel.profileList
                                  .map((e) => ImageContainer(
                                        opacity: e.id == 1 ? 0.8 : 0.3,
                                        image: e.profileUrl,
                                        text: e.name,
                                      )),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              ...ProfileModel.profileList
                                  .map((e) => ImageContainer(
                                        opacity: e.id == 2 ? 0.8 : 0.3,
                                        image: e.profileUrl,
                                        text: e.name,
                                      )),
                            ],
                          ),
                        ]),
                  ),
                  Opacity(
                    opacity: 0.3,
                    child: Container(
                      width: screenW,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff1A1C16), Color(0xff1A1A1E)])),
                      height: 470,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenW - 90,
                      //color: Colors.blue,
                      child: const Text(
                        "Find New Friends with Sosmad",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    SizedBox(
                      //color: Colors.black,
                      width: screenW - 120,
                      child: const Text(
                        "With Sosmad then ypu will find new friends from various countries and region throughout the region",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            //fontSize: 28,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      width: 130,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              elevation: 0,
                              primary: const Color(0xff105F9C)),
                          onPressed: () {},
                          child: const Text("Get Started")),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String image, text;
  final double opacity, containerOpacity;
  const ImageContainer(
      {Key? key,
      required this.image,
      required this.text,
      required this.opacity,
      this.containerOpacity = 0.3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Opacity(
          opacity: containerOpacity,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 3),
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(8),
            width: 105,
            height: 125,
            decoration: BoxDecoration(
                //color: const Color(0xff1E2327),
                color: const Color(0xff2B2F31),
                borderRadius: BorderRadius.circular(12)),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                //fontSize: 28,
                //fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        Positioned(
          top: 15,
          child: Opacity(
            opacity: opacity,
            child: CircleAvatar(
              radius: 40,
              foregroundImage: NetworkImage(image),
            ),
          ),
        ),
      ],
    );
  }
}
