import 'package:flutter/material.dart';
import '../dashboard/presentation/dashboard.dart';

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
      home: const Dashboard(),
    );
  }
}
