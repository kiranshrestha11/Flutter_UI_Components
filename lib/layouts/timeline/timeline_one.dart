import 'package:flutter/material.dart';

class TimeLineOne extends StatelessWidget {
  const TimeLineOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Container(
      width: w,
      margin: EdgeInsets.symmetric(horizontal: w * 0.055, vertical: h * 0.01),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Title",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "1st Jan 2021",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  decoration: TextDecoration.underline),
            )
          ],
        ),
        SizedBox(
          height: h * 0.02,
        ),
      
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
          overflow: TextOverflow.ellipsis,
          maxLines: 4,
          textAlign: TextAlign.justify,
          style: TextStyle(color: Colors.grey[500]),
        ),
        SizedBox(
          height: h * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Kiran Shrestha",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff7338EA),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text("Read More")),
          ],
        ),
      ]),
    );
  }
}
