import 'package:flutter/material.dart';
import 'package:waiting_list/models/truck_model.dart';
import 'package:waiting_list/pages/selected_page.dart';

class exploreNear extends StatelessWidget {
  exploreNear({super.key});

  List<TruckModel> trucks = [];

  void _getTruckInfo() {
    trucks = TruckModel.getTrucks();
  }

  @override
  Widget build(BuildContext context) {
    _getTruckInfo();

    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // _searchField(),
            const SizedBox(
              height: 40,
            ),
            _nearYou(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_rounded), label: "Favourites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_sharp), label: "Updates"),
        ],
      ),
    );
  }

  Column _nearYou() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Food Trucks Near You',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          // color: Colors.blue,
          height: 590,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 400,
                decoration: BoxDecoration(
                    // color: trucks[index].boxColor,
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: NetworkImage(trucks[index].imagePath),
                      loadingBuilder: (context, child, loadingProgress) {
                        return loadingProgress == null
                            ? child
                            : const LinearProgressIndicator();
                      },
                      height: 320,
                      width: 358,
                      fit: BoxFit.cover,
                    ),
                    // const Icon(Icons.ac_unit_sharp),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            trucks[index].name,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.favorite_border)),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${trucks[index].price} | ${trucks[index].cusine} | ${trucks[index].rating}',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 8, 8, 8),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.navigation_outlined)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SelectedPage()),
                        );
                      },
                      child: Container(
                        height: 48,
                        width: 358,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(255, 219, 29, 29),
                              Color.fromARGB(255, 219, 29, 29),
                            ]),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Join Waitlist',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 25,
              height: 10,
            ),
            itemCount: trucks.length,
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(left: 20, right: 20),
          ),
        ),
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Good Afternoon, Emma',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          // fontWeight: bold,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.9,
      centerTitle: true,
      // leading: GestureDetector(
      //   onTap: () {},
      //   child: Container(
      //     margin: const EdgeInsets.all(10),
      //     alignment: Alignment.center,
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //     child: const Icon(
      //       Icons.access_alarm,
      //     ),
      //   ),
      // ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.access_time_rounded,
            ),
          ),
        ),
      ],
    );
  }
}
