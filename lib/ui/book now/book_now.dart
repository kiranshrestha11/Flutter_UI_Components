import 'package:flutter/material.dart';
import 'package:ecommercelayout/ui/book%20now/form_text.dart';

class BookNow extends StatelessWidget {
  const BookNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //main container
    return Container(
      //height: 514 + 12,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child:
          //main body
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //heading
          const Text("Book now",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 10),
          const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              )),
          const SizedBox(height: 50),
          //form from here
          const FormText(text: "CITY"),
          const SizedBox(height: 5),
          //city textfield
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 45,
            width: 308,
            decoration: BoxDecoration(
                color: const Color(0xfff3f3f3),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: const [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Placeholder",
                        hintStyle: TextStyle(
                            color: Color(0xff78858F),
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.w400),
                        border: InputBorder.none),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          //Arrival and Departure in Row and creating column below them.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Arrival Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FormText(text: "ARRIVAL"),
                  const SizedBox(height: 5),
                  //arrival textfield
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 45,
                    width: 140,
                    decoration: BoxDecoration(
                        color: const Color(0xfff3f3f3),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: const [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "10 October",
                                hintStyle: TextStyle(
                                    color: Color(0xff78858F),
                                    fontSize: 14,
                                    height: 2,
                                    fontWeight: FontWeight.w400),
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const FormText(text: "STAR"),
                  const SizedBox(height: 5),
                  //star textfield
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                            color: const Color(0xfff3f3f3),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: const [
                            Expanded(
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    hintText: "4",
                                    hintStyle: TextStyle(
                                        color: Color(0xff78858F),
                                        fontSize: 14,
                                        height: 2,
                                        fontWeight: FontWeight.w400),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 38,
                        height: 45,
                        decoration: const BoxDecoration(
                            color: Color(0xffebebeb),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8))),
                        child: const Icon(Icons.remove),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          width: 38,
                          height: 45,
                          decoration: const BoxDecoration(
                              color: Color(0xffebebeb),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                          child: const Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              //Departure Column from here
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FormText(text: "DEPARTURE"),
                  const SizedBox(height: 5),

                  //departure textfield
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 45,
                    width: 140,
                    decoration: BoxDecoration(
                        color: const Color(0xfff3f3f3),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: const [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "11 October",
                                hintStyle: TextStyle(
                                    color: Color(0xff78858F),
                                    fontSize: 14,
                                    height: 2,
                                    fontWeight: FontWeight.w400),
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const FormText(text: "ROOM"),
                  const SizedBox(height: 5),
                  //room textfield
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                            color: const Color(0xfff3f3f3),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: const [
                            Expanded(
                              child: TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    hintText: "1",
                                    hintStyle: TextStyle(
                                        color: Color(0xff78858F),
                                        fontSize: 14,
                                        height: 2,
                                        fontWeight: FontWeight.w400),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 38,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: Color(0xffebebeb),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8))),
                            child: const Icon(Icons.remove),
                          ),
                          const SizedBox(
                            width: 63,
                          ),
                          Container(
                            width: 38,
                            height: 45,
                            decoration: const BoxDecoration(
                                color: Color(0xffebebeb),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8))),
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 30),

          //Book now button
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
              child: const Text("BOOK NOW"))
        ],
      ),
    );
  }
}
