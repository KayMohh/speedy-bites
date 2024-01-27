import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(children: [
          //single item
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 260,
              height: 320,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [BoxShadow(color: Colors.grey)]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Food Trucks Near You",
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    child: Image.asset(
                      "images/blue-bus.jpg",
                      height: 188,
                      width: 278,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Don Tacos"),
                      for (int i = 0; i < 5; i++)
                        const Icon(
                          Icons.favorite_border_outlined,
                          size: 16,
                        ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$ 10"),
                      Text("  Mexican  "),
                      Icon(
                        Icons.star_border,
                        size: 16,
                      ),
                      SizedBox(
                        width: 75,
                      ),
                      Icon(
                        Icons.pin_drop_outlined,
                        size: 16,
                      ),
                      Text("1.2 mi")
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 34,
                    width: 278,
                    // padding: EdgeInsets.all(20),
                    // margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.red[600],
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(
                          color: Colors.white,
                          // width: 25,
                        )),
                    child: const Center(
                      child: Text(
                        "Join Waitlist",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w100),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
