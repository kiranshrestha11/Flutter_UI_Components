import 'package:flutter/material.dart';
import 'package:ecommercelayout/layouts/design/design_one.dart';
import 'package:ecommercelayout/layouts/hero/hero%20eleven/hero_eleven.dart';
import 'package:ecommercelayout/layouts/hero/hero%20ten/hero_ten.dart';
import 'package:ecommercelayout/layouts/hero/hero%20twenty%20one/hero_twenty_one.dart';
import 'package:ecommercelayout/layouts/icon%20box/icon%20box%20nine/icon_box_nine.dart';
import 'package:ecommercelayout/layouts/popular%20courses/popular_course_listview.dart';
import 'package:ecommercelayout/layouts/social/social%20two/social_two.dart';
import 'package:ecommercelayout/layouts/team/team%20four/team_four.dart';
import 'package:ecommercelayout/layouts/team/team%20one/team_one.dart';
import 'package:ecommercelayout/layouts/timeline/timeline_one.dart';
import 'package:ecommercelayout/layouts/timeline/timeline_three.dart';
import 'package:ecommercelayout/layouts/timeline/timeline_two.dart';
import 'package:ecommercelayout/ui/book%20now/book_now.dart';
import 'package:ecommercelayout/ui/calendar/calendar.dart';
import 'package:ecommercelayout/ui/circle_progress/circle_page.dart';
import 'package:ecommercelayout/ui/coffee%20rating/coffee_rating.dart';
import 'package:ecommercelayout/ui/facebook_post/background.dart';
import 'package:ecommercelayout/ui/gradient%20text/gradient_text.dart';
import 'package:ecommercelayout/ui/music_notification/music_notification.dart';
import 'package:ecommercelayout/ui/music_player/music_player.dart';
import 'package:ecommercelayout/ui/percent_indicator/percent_indicator.dart';
import 'package:ecommercelayout/ui/place_rating/place_rating.dart';
import 'package:ecommercelayout/ui/running_music/running_music.dart';

import 'layouts/buy tablet program/buy_tablet.dart';
import 'layouts/icon box/icon box five/icon_box_five.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBACAD9),
      // appBar: AppBar(),
      body: ListView(
        children: [
          const SocialTwo(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const IconBoxNine(),
          const Divider(color: Colors.white, thickness: 3, height: 25),

          const IconBoxFive(),
          const Divider(color: Colors.white, thickness: 3, height: 25),

          const HeroTwentyOne(),
          const Divider(color: Colors.white, thickness: 3, height: 25),

          const HeroTen(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const HeroEleven(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const TeamFourListview(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          //Team One
          const TeamOne(),
          const Divider(color: Colors.white, thickness: 3, height: 25),

          //Buy tablet program
          const BuyTablet(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          //Popular courses Listview
          const PopularCourseListview(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const TimeLineOne(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const TimeLineTwo(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const TimeLineThree(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          //Inbox,reports,calendar,invoices,content
          const DesignOne(),

          const Divider(color: Colors.white, thickness: 3, height: 25),
          //GradientText
          GradientText(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const CoffeeRating(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const RunningMusic(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const PlaceRating(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const Background(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const MusicPlayer(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const Calendar(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const MusicNotification(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const BookNow(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const CirclePage(),
          const Divider(color: Colors.white, thickness: 3, height: 25),
          const PercentIndicator(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
