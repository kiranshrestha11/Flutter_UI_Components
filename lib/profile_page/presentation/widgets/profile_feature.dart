import 'package:flutter/material.dart';

class ProfileFeature extends StatelessWidget {
  const ProfileFeature(
      {Key? key,
      required this.screenSize,
      required this.icon,
      required this.containerColor,
      required this.text,
      required this.iconColor})
      : super(key: key);

  final Size screenSize;
  final IconData icon;
  final Color containerColor;
  final String text;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: screenSize.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                    color: containerColor, shape: BoxShape.circle),
                child: Icon(
                  icon,
                  color: iconColor,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                text,
                style: const TextStyle(
                    color: Color(0xff363676),
                    //fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff363676),
                size: 19,
              ))
        ],
      ),
    );
  }
}
