import 'package:flutter/material.dart';

class PlaceRating extends StatelessWidget {
  const PlaceRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 380,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(75),
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://jooinn.com/images/evening-sea-shore-4.jpg")),
          ),
        ),
        Container(
          height: 380,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: const EdgeInsets.all(40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(75),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(0, 0, 0, 0).withOpacity(0.2),
                  const Color.fromARGB(1, 0, 0, 0).withOpacity(0.5),
                  const Color.fromARGB(1, 0, 0, 0).withOpacity(0.75)
                ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PhysicalModel(
                    color: Colors.black.withOpacity(0.4),
                    elevation: 20,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                        padding: const EdgeInsets.only(left: 6),
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 21,
                        )),
                  ),
                  PhysicalModel(
                    color: Colors.black.withOpacity(0.4),
                    elevation: 20,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: const Icon(
                          Icons.favorite_outline,
                          size: 25,
                        )),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.near_me_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "1.2Km away",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Text("Pidia Beach",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    width: 60,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.79),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 16,
                        ),
                        Text("4.9",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
