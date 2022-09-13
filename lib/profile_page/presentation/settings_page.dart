import 'dart:developer';

import 'package:ecommercelayout/profile_page/presentation/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.85),
      appBar: AppBar(
        title: const Text("Settings"),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(
                top: screenH * 0.0135, bottom: screenH * 0.0135),
            child: Column(
              children: [
                const SettingMenuItem(
                  text: "Account Information",
                ),
                const Divider(
                  thickness: 1,
                ),
                const SettingMenuItem(text: "Addrerss Book"),
                const Divider(
                  thickness: 1,
                ),
                const SettingMenuItem(text: "Messages"),
                const Divider(
                  thickness: 1,
                ),
                const SettingMenuItem(text: "Country: Nepal"),
                const Divider(
                  thickness: 1,
                ),
                const Text("Language",
                    style: TextStyle(fontSize: 16, color: Color(0xff363676))),
                Text("English",
                    style: TextStyle(fontSize: 12, color: Colors.grey[500])),
                const Divider(
                  thickness: 1,
                ),
                const SettingMenuItem(text: "General"),
                const Divider(
                  thickness: 1,
                ),
                const SettingMenuItem(text: "Policies"),
                const Divider(
                  thickness: 1,
                ),
                const SettingMenuItem(text: "Help"),
              ],
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              log("Logout");
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                  bottom: screenH * 0.0135,
                  left: screenH * 0.0135,
                  right: screenH * 0.0135),
              decoration: BoxDecoration(
                  color: const Color(0xff363676),
                  borderRadius: BorderRadius.circular(5)),
              alignment: Alignment.center,
              height: screenH * 0.0611,
              width: double.infinity,
              child: const Text("Logout",
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
          ),
          //const Text("1.0.1"),
          SizedBox(
            height: screenH * 0.0135,
          )
        ],
      ),
    );
  }
}

class SettingMenuItem extends StatelessWidget {
  const SettingMenuItem({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 35,
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, color: Color(0xff363676)),
        ));
  }
}
