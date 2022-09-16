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
        const TitleContainer(
          text: "Full Name",
        ),
        Ink(
          //color: Colors.red,
          child: SizedBox(
            width: screenSize.width - 40,
            child: TextFormField(
              scrollPadding: EdgeInsets.zero,
              //autofocus: false,
              decoration: const InputDecoration(
                isDense: true,
                hintText: "Kiran Shrestha",
                contentPadding: EdgeInsets.symmetric(vertical: 8),
              ),
              style: const TextStyle(),
            ),
          ),
        ),
        const TitleContainer(
          text: "Email",
        ),
        SizedBox(
          width: screenSize.width - 40,
          child: TextFormField(
            scrollPadding: EdgeInsets.zero,
            //autofocus: false,
            decoration: const InputDecoration(
              isDense: true,
              hintText: "Kiranstha1679@gmail.com",
              contentPadding: EdgeInsets.symmetric(vertical: 8),
            ),
            style: const TextStyle(),
          ),
        ),
        const TitleContainer(
          text: "Region",
        ),
        SizedBox(
          width: screenSize.width - 40,
          child: TextFormField(
            scrollPadding: EdgeInsets.zero,
            //autofocus: false,
            decoration: const InputDecoration(
              isDense: true,
              hintText: "Bagmati",
              contentPadding: EdgeInsets.symmetric(vertical: 8),
            ),
            style: const TextStyle(),
          ),
        ),
        const TitleContainer(
          text: "Address",
        ),
        SizedBox(
          width: screenSize.width - 40,
          child: TextFormField(
            scrollPadding: EdgeInsets.zero,
            //autofocus: false,
            decoration: const InputDecoration(
              isDense: true,
              hintText: "Putalisadak,Kathmandu",
              contentPadding: EdgeInsets.symmetric(vertical: 8),
            ),
            style: const TextStyle(),
          ),
        ),
      ],
    );
  }
}

class TitleContainer extends StatelessWidget {
  final String text;
  const TitleContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.only(top: 13), child: Text(text));
  }
}
