import 'package:ecommercelayout/scrollable_bar/presentation/scrollable_bar.dart';
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
      ),
      home: const ScrollableBar(),
    );
  }
}
