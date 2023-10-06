import 'package:flutter/cupertino.dart';

class FormText extends StatelessWidget {
  const FormText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
    );
  }
}
