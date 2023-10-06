import 'package:ecommercelayout/screen_list.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 151, 180, 204),
        body: SafeArea(
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 20.0),
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => screens[index].screen));
                      },
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                screens[index].name,
                                style: const TextStyle(fontSize: 16.0),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 22,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10.0,
                    ),
                itemCount: screens.length)));
  }
}
