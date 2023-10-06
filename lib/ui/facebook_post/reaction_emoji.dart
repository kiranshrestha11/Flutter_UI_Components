import 'package:flutter/material.dart';

class ReactionEmoji extends StatelessWidget {
  const ReactionEmoji({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: Colors.white)),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 15,
        backgroundImage: AssetImage(url),
      ),
    );
  }
}
