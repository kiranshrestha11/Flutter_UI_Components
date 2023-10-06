import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MusicNotification extends StatefulWidget {
  const MusicNotification({Key? key}) : super(key: key);

  @override
  State<MusicNotification> createState() => _MusicNotificationState();
}

class _MusicNotificationState extends State<MusicNotification> {
  bool isplaying = true;
  bool isdark = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),

      //PhysicalModel to provide Elevation
      child: PhysicalModel(
        color: Colors.white,
        shadowColor: Colors.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20.0),
        elevation: 30,

        //Main body or background
        child: Container(
          height: 120,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: isdark ? const Color(0xff080808) : const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(20.0)),

          //Adding necessary Components in Row
          child: Row(
            children: [
              //This container holds image.
              Container(
                height: 120,
                width: 96,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0)),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://st.depositphotos.com/1162342/3409/i/950/depositphotos_34098789-stock-photo-guitar-music-background.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //This Container holds title, artist and pause or play button
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),

                //Column for title and artist
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    Text(
                      "ColdPlay",
                      style: TextStyle(
                          color:
                              isdark ? Colors.white : const Color(0xff000000),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),

                    //artist name which moves with the help of Marquee package
                    SizedBox(
                      width: 132,
                      height: 16,
                      child:
                          movingText("the scientist (official video) ft.Drake"),
                    )
                  ],
                ),
              ),

              //Round pause or play button
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: isdark ? Colors.white : const Color(0xfff6f6f6),
                    shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isplaying = !isplaying;
                      isdark = !isdark;
                    });
                  },
                  icon: Icon(isplaying ? Icons.play_arrow : Icons.pause),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //This Widget takes text that needs to be animated[Text Slide Animation]
  Widget movingText(String text) {
    return Marquee(
      text: text,
      style: TextStyle(
          color: isdark ? const Color(0xffC4C4C4) : const Color(0xff787878),
          fontSize: 14.0,
          fontWeight: FontWeight.w400),
      blankSpace: 25,
      velocity: 30,
    );
  }
}
