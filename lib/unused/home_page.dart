import 'package:flutter/material.dart';
import 'package:waiting_list/widgets/bottom_navbar.dart';

import '../Widgets/item_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
        centerTitle: true,
      ),
      body: ListView(children: const [
        Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            // padding: const EdgeInsets.symmetric(h25),
            child: Row(
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Good Afternoon,"), Icon(Icons.person_pin)],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Exploring "),
              Text(
                "Chicago, IL",
                style: TextStyle(color: Colors.red),
              ),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ]),
        ItemsWidget(),
        ItemsWidget(),
        ItemsWidget(),
        BottomNavBar(),
      ]),
    );
  }
}
