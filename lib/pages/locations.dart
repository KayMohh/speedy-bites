import 'package:flutter/material.dart';

class LocationsTab extends StatelessWidget {
  const LocationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Previous Locations",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 10),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.location_pin),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("W 17th St & Thompson St"),
                  Text(
                    "36 times this year",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.location_pin),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Washington Sq & 5th Ave"),
                  Text(
                    "27 times this year",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.location_pin),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Fairway Dr & 2nd Ave"),
                  Text(
                    "24 times this year",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            // margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 211, 21, 18),
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: Colors.white,
                  // width: 25,
                )),
            child: const Center(
              child: Text(
                "Get Location Notifications",
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
