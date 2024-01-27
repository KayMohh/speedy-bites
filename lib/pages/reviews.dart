import 'package:flutter/material.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        (Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.star_border_rounded,
              size: 27,
            ),
            const Text(
              " 4.4  ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                  color: Colors.red, shape: BoxShape.circle),
            ),
            const Text("  410 reviews",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
          ],
        )),
        const SizedBox(
          height: 15,
        ),
        Card(
          color: Colors.white,
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/ryan.png"))),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Ryan"), Text("2 years on SpeedyBite")],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int i = 0; i < 6; i++)
                    const Icon(
                      Icons.star_border_rounded,
                      size: 13,
                    ),
                  const Text(
                    "  2 days ago",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "Very cheesy experience! This is a great place to enjoy a delicious sandwich.")
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Card(
          color: Colors.white,
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,

                            image: AssetImage("assets/images/jordyn.jpg"))),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Jordyn"), Text("6  months on SpeedyBite")],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int i = 0; i < 6; i++)
                    const Icon(
                      Icons.star_border_rounded,
                      size: 13,
                    ),
                  const Text(
                    "  1 week ago",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "Waitlist was a breeze, customer service was above and beyond and the food was very good. Highly recommend!"),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Card(
          color: Colors.white,
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,

                            image: AssetImage("assets/images/penelope.jpg"))),

                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Penelope"), Text("4 years on SpeedyBite")],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int i = 0; i < 6; i++)
                    const Icon(
                      Icons.star_border_rounded,
                      size: 13,
                    ),
                  const Text(
                    "  3 weeks ago",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "I love this place. I come here at least once every two weeks and I will never get tired of it."),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.all(10),
          // margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 211, 21, 18),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: Colors.white,
                // width: 25,
              )),
          child: const Center(
            child: Text(
              "See All Reviews",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ),
        ),
      ]),
    );
  }
}
