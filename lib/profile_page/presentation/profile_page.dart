import 'dart:developer';
import 'package:ecommercelayout/profile_page/presentation/my_order_page.dart';
import 'package:ecommercelayout/profile_page/presentation/edit_profile.dart';
import 'package:ecommercelayout/profile_page/presentation/settings_page.dart';
import 'package:ecommercelayout/profile_page/presentation/user_detail_page.dart';
import 'package:ecommercelayout/profile_page/presentation/widgets/profile_feature.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool showServiceContainer = false, showOrderContainer = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    String imageUrl = "assets/images/headphone.jpg";
    log(screenSize.height.toString());
    log(screenSize.width.toString());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              CupertinoPageRoute(
                                builder: (context) => const SettingPage(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.settings_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
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
                                      content: Image.asset(
                                        imageUrl,
                                        height: screenSize.height * 0.407,
                                        width: screenSize.width * 0.972,
                                        fit: BoxFit.cover,
                                      ),
                                    ));
                          },
                          child: ClipOval(
                            child: Image.asset(
                              imageUrl,
                              fit: BoxFit.cover,
                              height: screenSize.height * 0.163,
                              width: screenSize.width * 0.333,
                            ),
                          )),
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
                  fontSize: 22),
            ),
            SizedBox(
              height: screenSize.height * 0.0067,
            ),
            SizedBox(
              height: screenSize.height * 0.02989,
            ),
            SizedBox(
              width: screenSize.width - 54,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    WishCard(
                      num: "30",
                      text: "My Wishlist",
                    ),
                    VerticalDivider(
                      thickness: 1,
                    ),
                    WishCard(
                      num: "5",
                      text: "Followed Stores",
                    ),
                    VerticalDivider(
                      thickness: 1,
                    ),
                    WishCard(
                      num: "6",
                      text: "Vouchers",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.04,
            ),
            ProfileFeature(
              onTap: () {
                setState(() {
                  showOrderContainer = !showOrderContainer;
                });
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => const UserDetailPage(),
                //   ),
                // );
              },
              text: "My Orders",
              containerColor: const Color(0xffFFDDEB),
              icon1: (Icons.local_shipping_outlined),
              icon2: showOrderContainer
                  ? Icons.expand_less_outlined
                  : Icons.expand_more_outlined,
              iconColor: const Color(0xffBA8C9F),
              screenSize: screenSize,
            ),
            Visibility(
              visible: showOrderContainer,
              child: SizedBox(
                width: screenSize.width - 46,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OrderExpandedContainer(
                      screenSize: screenSize,
                      text: "To pay",
                      icon: Icons.payment_outlined,
                    ),
                    OrderExpandedContainer(
                      screenSize: screenSize,
                      text: "To Ship",
                      icon: Icons.inventory_2_outlined,
                    ),
                    OrderExpandedContainer(
                      screenSize: screenSize,
                      text: "To Receive",
                      icon: Icons.local_shipping_outlined,
                    ),
                    OrderExpandedContainer(
                        screenSize: screenSize,
                        text: "To Review",
                        icon: Icons.sms_outlined),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.0235,
            ),
            ProfileFeature(
              onTap: () {
                setState(() => showServiceContainer = !showServiceContainer);
              },
              text: "My Service",
              containerColor: const Color(0xffE2DFFE),
              icon1: (Icons.cleaning_services_outlined),
              icon2: showServiceContainer
                  ? Icons.expand_less_outlined
                  : Icons.expand_more_outlined,
              iconColor: const Color(0xff9190BC),
              screenSize: screenSize,
            ),
            Visibility(
              visible: showServiceContainer,
              child: SizedBox(
                width: screenSize.width - 46,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OrderExpandedContainer(
                      screenSize: screenSize,
                      text: "Messages",
                      icon: Icons.email_outlined,
                    ),
                    OrderExpandedContainer(
                      screenSize: screenSize,
                      text: "My Review",
                      icon: Icons.sms_outlined,
                    ),
                    OrderExpandedContainer(
                      screenSize: screenSize,
                      text: "Payment",
                      icon: Icons.payments_outlined,
                    ),
                    OrderExpandedContainer(
                      screenSize: screenSize,
                      text: "Help",
                      icon: Icons.help_center_outlined,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.0235,
            ),
            ProfileFeature(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyOrderPage(),
                  ),
                );
              },
              text: "My Returns",
              containerColor: const Color(0xffF9E4C8),
              icon1: (Icons.payment_outlined),
              icon2: Icons.arrow_forward_ios_outlined,
              iconColor: const Color(0xffE1B98A),
              screenSize: screenSize,
            ),
            SizedBox(
              height: screenSize.height * 0.0235,
            ),
            ProfileFeature(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UserDetailPage(),
                  ),
                );
              },
              text: "My Cancellations",
              containerColor: const Color(0xffDDC9F8),
              icon1: (Icons.free_cancellation_outlined),
              icon2: Icons.arrow_forward_ios_outlined,
              iconColor: const Color(0xff8E6CBA),
              screenSize: screenSize,
            ),
            SizedBox(
              height: screenSize.height * 0.05434,
            ),
            SizedBox(
              height: screenSize.height * 0.0679,
              width: screenSize.width - 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff363676)),
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => const EditProfile(),
                      ),
                    );
                  },
                  child: const Text(
                    "Edit",
                    style: TextStyle(fontSize: 16),
                  )),
            ),
            SizedBox(
              height: screenSize.height * 0.05434,
            ),
          ],
        ),
      ),
    );
  }
}

class OrderExpandedContainer extends StatelessWidget {
  const OrderExpandedContainer({
    Key? key,
    required this.screenSize,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final Size screenSize;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenSize.height * 0.013,
        ),
        Icon(
          icon,
          color: const Color(0xff9190BC),
          size: 28,
        ),
        Text(text,
            style: const TextStyle(fontSize: 13, color: Color(0xff363676)))
      ],
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

class WishCard extends StatelessWidget {
  const WishCard({
    Key? key,
    required this.num,
    //required this.containerColor,
    required this.text,
  }) : super(key: key);

  //final Color containerColor;
  final String text;

  final String num;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          num,
          style: const TextStyle(color: Color(0xff363676), fontSize: 18),
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 93, 92, 163),
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
