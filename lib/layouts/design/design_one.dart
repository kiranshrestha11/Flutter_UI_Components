import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesignOne extends StatelessWidget {
  const DesignOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: const Color(0xffF5F9FB),
      child: Row(
        children: [
          inboxCard(
            w,
            h,
            FontAwesomeIcons.envelope,
            "Inbox",
            const Color(0xff7338EA),
          ),
          inboxCard(
            w,
            h,
            Icons.timeline_outlined,
            "Reports",
            const Color(0xff019FF7),
          ),
          inboxCard(w, h, Icons.calendar_month_outlined, "Calendar",
              const Color(0xffF0406C)),
          inboxCard(
            w,
            h,
            Icons.file_copy_outlined,
            "Invoices",
            const Color(0xff50CC88),
          ),
          inboxCard(
            w,
            h,
            Icons.content_paste_outlined,
            "Content",
            const Color(0xff019FF7),
          ),
        ],
      ),
    );
  }

  SizedBox inboxCard(
      double w, double h, IconData icon, String text, Color color) {
    return SizedBox(
      height: h * 0.097,
      width: w * 0.2,
      child: Card(
        color: Colors.white,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              FaIcon(
                icon,
                color: color,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                text,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
              )
            ],
          ),
        ),
      ),
    );
  }
}
