import 'package:flutter/material.dart';

class CoffeeRating extends StatelessWidget {
  const CoffeeRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 500,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0xff18051B),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  "https://www.kanomama.com.np/wp-content/themes/kmcoffee_thm/inc/timthumb.php?src=https://www.kanomama.com.np/wp-content/uploads/2021/02/CAPPUCCINO-new.jpg&w=1080&h=560",
                  fit: BoxFit.cover,
                  height: 269,
                  width: 310,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                width: 78,
                height: 56,
                decoration: BoxDecoration(
                    color: const Color(0xff060A12).withOpacity(0.8),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.star,
                      color: Color(0xffFFE600),
                      size: 20,
                    ),
                    Text("5.4",
                        style: TextStyle(
                            color: Color(0xffFFE600),
                            fontSize: 17,
                            fontWeight: FontWeight.w700))
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Cappuccino",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          // const SizedBox(height: 5),
          const Text(
            "With  Chocolate",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "\$2.95",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                ),
              ),
              CircleAvatar(
                radius: 22,
                backgroundColor: Color(0xffA823F9),
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
