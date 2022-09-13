import 'package:flutter/material.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenWidth = size.width;
    double screenHeight = size.height;
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            crossAxisCount: 2,
            childAspectRatio: 2),
        children: const [
          OrderCard(
            text: "To Pay",
            icon: Icons.payment_outlined,
            color: Color(0xffFFDDEB),
          ),
          OrderCard(
            text: "To Ship",
            icon: Icons.inventory_2_outlined,
            color: Color(0xffE2DFFE),
          ),
          OrderCard(
              text: "To Recieve",
              icon: Icons.local_shipping_outlined,
              color: Color(0xffF9E4C8)),
          OrderCard(
              text: "To Review",
              icon: Icons.reviews_outlined,
              color: Color(0xffDDC9F8)),
        ],
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  const OrderCard(
      {Key? key, required this.text, required this.icon, required this.color})
      : super(key: key);
  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenWidth = size.width;
    double screenHeight = size.height;
    return Container(
      color: color,
      //height: 80,
      //width: screenWidth / 2.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(text,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Icon(
            icon,
            size: 40,
          ),
        ],
      ),
    );
  }
}
