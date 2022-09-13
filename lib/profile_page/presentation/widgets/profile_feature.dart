import 'package:flutter/material.dart';

class ProfileFeature extends StatelessWidget {
  const ProfileFeature(
      {Key? key,
      required this.screenSize,
      required this.icon1,
      required this.icon2,
      required this.containerColor,
      required this.text,
      required this.onTap,
      required this.iconColor})
      : super(key: key);

  final Size screenSize;
  final IconData icon1, icon2;
  final Color containerColor;
  final String text;
  final Color iconColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.0638),
        width: screenSize.width,
        child: Ink(
          //color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: screenSize.height * 0.0576,
                    width: screenSize.width * 0.1167,
                    decoration: BoxDecoration(
                        color: containerColor, shape: BoxShape.circle),
                    child: Icon(
                      icon1,
                      color: iconColor,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    text,
                    style:
                        const TextStyle(color: Color(0xff363676), fontSize: 16),
                  ),
                ],
              ),
              Icon(
                icon2,
                color: const Color(0xff363676),
                size: icon2 == Icons.arrow_forward_ios_outlined ? 20 : 29,
              )
            ],
          ),
        ),
      ),
    );
  }
}
