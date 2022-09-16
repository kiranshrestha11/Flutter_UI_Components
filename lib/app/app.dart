import 'package:ecommercelayout/on%20boarding%201/onboarding_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Product Sans',
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Color(0xff363676),
          centerTitle: true,
        ),
      ),
      home: const OnBoarding1(),
      // home: const ProfilePage(),
    );
  }
}
