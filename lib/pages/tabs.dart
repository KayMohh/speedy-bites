import 'package:flutter/material.dart';
import 'package:waiting_list/pages/locations.dart';
import 'package:waiting_list/pages/menu.dart';
import 'package:waiting_list/pages/reviews.dart';
import 'package:waiting_list/pages/waiting_status.dart';

class Tabtiles extends StatefulWidget {
  const Tabtiles({super.key});

  @override
  State<Tabtiles> createState() => _TabtilesState();
}

class _TabtilesState extends State<Tabtiles> with TickerProviderStateMixin {
  // late TabController tabController;
  // @override
  // void initState() {
  // super.initState();
  // tabController = TabController(length: 4, vsync: this);
  // }

  // @override
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);

    return Column(children: [
      Container(
        child: TabBar(
            tabAlignment: TabAlignment.fill,
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            labelColor: Colors.red,
            indicatorWeight: 3,
            indicatorColor: Colors.red,
            tabs: [
              Tab(
                  child: Text(
                "Waiting Status",
                style: TextStyle(fontSize: 12),
              )),
              Tab(child: Text("Waiting Status")),
              Tab(child: Text("Menu")),
              Tab(child: Text("Reviews")),
              Tab(child: Text("Locations")),
            ]),
      ),
      Container(
        child: TabBarView(
          controller: _tabController,
          children: [
            Text("1"),
            Text("12"),
            Text("13"),
            Text("14"),
            // WaitingStatusTab(),
            // MenuTab(),
            // ReviewsTab(),
            // LocationsTab(),
          ],
        ),
      )
    ]);

    // Column(
    //   children: [
    //     Expanded(
    //         flex: 1,
    //         child: DefaultTabController(
    //             length: 4,
    //             child: Scaffold(
    //               appBar: AppBar(
    //                 flexibleSpace: TabBar(
    //                     indicatorSize: TabBarIndicatorSize.label,
    //                     isScrollable: true,
    //                     labelColor: Colors.red,
    //                     indicatorWeight: 3,
    //                     indicatorColor: Colors.red,
    //                     tabs: [
    //                       Tab(
    //                           child: Text(
    //                         "Waiting Status",
    //                         style: TextStyle(fontSize: 12),
    //                       )),
    //                       Tab(child: Text("Menu")),
    //                       Tab(child: Text("Reviews")),
    //                       Tab(child: Text("Locations")),
    //                     ]),
    //               ),
    //               body: TabBarView(children: [
    //                 WaitingStatusTab(),
    //                 MenuTab(),
    //                 ReviewsTab(),
    //                 LocationsTab(),
    //               ]),
    //             )))
    //   ],
    // );
  }
}
