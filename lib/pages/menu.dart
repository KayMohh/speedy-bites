import 'package:flutter/material.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Menu",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const Text(
            "Popular items",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "The OG",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          const Text(
            "American and cheddar cheese spread on Texas Toast. Serviced with Tomato Soup.",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "The Caprese",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          const Text(
            "Mozzarella cheese, tomatoes, extra virgin olive oil, and fresh basil on sourdough.",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "The Mac",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          const Text(
            "American cheese, cheddar cheese spread and housemade macaroni and cheese on Texas Toast. ",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 10,
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
                "See Full Menu",
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
