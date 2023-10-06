import 'package:flutter/material.dart';
import 'package:ecommercelayout/ui/facebook_post/reaction_emoji.dart';

Widget topBar() => ListTile(
      leading: const CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(
            "https://static-cse.canva.com/blob/835514/1600w-YTfEMXMuMCs.jpg"),
      ),
      title: const Text("Alexandro Vargas",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )),
      subtitle: const Text("Ayer 23:50"),
      trailing: IconButton(
        icon: const Icon(
          Icons.more_vert,
          color: Colors.black,
          size: 28,
        ),
        onPressed: () {},
      ),
    );

Widget customImage() => Image.network(
      "https://hgtvhome.sndimg.com/content/dam/images/grdn/fullset/2013/3/25/0/Original_cosmos-flowers.jpg.rend.hgtvcom.616.462.suffix/1452655274302.jpeg",
      fit: BoxFit.cover,
    );

Widget emojiAndComment() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 86,
          child: Stack(
            children: const [
              ReactionEmoji(
                url: "assets/fb_reaction_images/like.gif",
              ),
              Positioned(
                left: 24,
                child: ReactionEmoji(
                  url: "assets/fb_reaction_images/sad2.png",
                ),
              ),
              Positioned(
                right: 0,
                child: ReactionEmoji(
                  url: "assets/fb_reaction_images/love.gif",
                ),
              ),
            ],
          ),
        ),
        const Text("27 Comments",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff565656)))
      ],
    );

Widget bottomSection() => Row(
      children: const [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                hintText: "Placeholder",
                hintStyle: TextStyle(
                    color: Color(0xff78858F),
                    fontSize: 14,
                    height: 1.6,
                    fontWeight: FontWeight.w400),
                border: InputBorder.none),
          ),
        ),
        Icon(Icons.camera_alt_outlined),
        SizedBox(width: 4),
        Icon(Icons.sentiment_satisfied_outlined),
        SizedBox(width: 4),
        Icon(Icons.sticky_note_2_outlined),
      ],
    );
