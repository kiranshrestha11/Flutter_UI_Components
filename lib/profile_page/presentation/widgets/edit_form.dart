import 'package:flutter/material.dart';

class EditForm extends StatefulWidget {
  const EditForm({Key? key}) : super(key: key);

  @override
  State<EditForm> createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Full Name"),
        Ink(
          color: Colors.red,
          child: Container(
            margin: const EdgeInsets.only(top: 8),
            width: screenSize.width - 30,
            child: TextFormField(
              scrollPadding: EdgeInsets.zero,
              //autofocus: false,
              decoration: const InputDecoration(
                isDense: true,
                hintText: "Kiran Shrestha",
                contentPadding: EdgeInsets.symmetric(vertical: 5),
              ),
              style: const TextStyle(),
            ),
          ),
        ),
      ],
    );
  }
}
