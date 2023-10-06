// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommercelayout/homepage.dart';
import 'package:ecommercelayout/profile_page/presentation/edit_profile.dart';
import 'package:ecommercelayout/profile_page/presentation/profile_page.dart';
import 'package:ecommercelayout/scrollable_bar/presentation/scrollable_bar.dart';
import 'package:flutter/material.dart';

import 'dashboard/presentation/dashboard.dart';
import 'on boarding 1/onboarding_page.dart';

class ScreenModel {
  final String name;
  final Widget screen;
  ScreenModel({
    required this.name,
    required this.screen,
  });
}

final List<ScreenModel> screens = [
  ScreenModel(name: "Onboarding UI", screen: const OnBoarding1()),
  ScreenModel(name: "Edit Profile Screen", screen: const EditProfile()),
  ScreenModel(name: "Profile Screen", screen: const ProfilePage()),
  ScreenModel(name: "Products Details Page", screen: const ScrollableBar()),
  ScreenModel(name: "Prducts Screen", screen: const Dashboard()),
  ScreenModel(name: "UI Components", screen: const HomePage()),
];
