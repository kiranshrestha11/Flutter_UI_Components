import 'package:flutter/material.dart';
import 'package:ecommercelayout/ui/music_player/custom_slider.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

bool isdark = true;
bool isplaying = true;

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),

      //physical model to give elevation
      child: PhysicalModel(
        color: isdark ? Colors.black : Colors.white,
        elevation: 30,
        borderRadius: BorderRadius.circular(20),

        //Main Container with all components
        child: Container(
          padding: isdark
              ? const EdgeInsets.only(
                  top: 20,
                )
              : const EdgeInsets.only(top: 30), //top margin 30
          // height: 480,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              //icon in a row
              isdark
                  ? Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  isdark = !isdark;
                                });
                              },
                              icon: const Icon(
                                Icons.menu,
                                size: 32,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    )
                  : Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 80,
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isdark = !isdark;
                              });
                            },
                            icon: const Icon(
                              Icons.more_vert,
                              size: 32,
                            ))
                      ],
                    ),

              //image in CircleAvatar
              isdark
                  ? CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.white12.withOpacity(0.15),
                      child: Container(
                        height: 154,
                        width: 154,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/en/3/38/Troye_Sivan_-_Blue_Neighbourhood.png")),
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.black,
                              width: 6,
                              style: BorderStyle.solid),
                        ),
                      ),
                    )
                  : const CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/en/3/38/Troye_Sivan_-_Blue_Neighbourhood.png"),
                    ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Sunshine-Mix",
                style: TextStyle(
                    color: isdark ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Lookee Stefane",
                style: TextStyle(
                    color: isdark
                        ? const Color(0xffB9B9B9)
                        : const Color(0xff737373),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              SizedBox(
                height: isdark ? 0 : 8,
              ),

              //Custom Slider
              SizedBox(
                width: 300,
                height: 60,

                //timestamp and slider in a row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "03:34",
                      style: TextStyle(
                          color: isdark ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    //expanded in order to take the whole space available in sized box.
                    Expanded(
                      child: CustomSlider(isdark: isdark),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "02:04",
                      style: TextStyle(
                          color: isdark ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: isdark ? 0 : 8,
              ),

              //Controls
              SizedBox(
                width: 300,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.repeat,
                          color: isdark ? Colors.white : Colors.black,
                          size: 20,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.fast_rewind,
                          color: isdark ? Colors.white : Colors.black,
                          size: 30,
                        )),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color:
                              isdark ? Colors.white : const Color(0xffECECEC),
                          shape: BoxShape.circle),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              isplaying = !isplaying;
                            });
                          },
                          icon: Icon(
                            isplaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.black,
                            size: 38,
                          )),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.fast_forward,
                          color: isdark ? Colors.white : Colors.black,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shuffle,
                          color: isdark ? Colors.white : Colors.black,
                          size: 20,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
