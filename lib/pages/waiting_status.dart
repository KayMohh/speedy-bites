import 'package:flutter/material.dart';
import 'package:waiting_list/pages/confirmation.dart';

class WaitingStatusTab extends StatelessWidget {
  const WaitingStatusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                // padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 14,
                width: 14,
                decoration: const BoxDecoration(
                    color: Color(0xff2BDA45), shape: BoxShape.circle),
              ),
              const Text(
                " Open now until 10 PM",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Last Quoted Wait Time: 15 mins",
              style: TextStyle(fontSize: 16)),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Confirmation()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              // margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 211, 21, 18),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Colors.white,
                    // width: 25,
                  )),
              child: const Center(
                child: Text(
                  "Join Waitlist",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
