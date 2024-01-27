import 'package:flutter/material.dart';
import 'package:waiting_list/models/truck_model.dart';
import 'package:waiting_list/models/feature_model.dart';
import 'package:waiting_list/models/foodtruck_model.dart';
import 'package:waiting_list/pages/explore_near.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TruckModel> trucks = [];

  void _getTruckInfo() {
    trucks = TruckModel.getTrucks();
  }

  List<FeatModel> feats = [];

  void _getFeatInfo() {
    feats = FeatModel.getFeats();
  }

  List<FoodTruckModel> foodTrucks = [];

  void _getFoodTruckInfo() {
    foodTrucks = FoodTruckModel.getFoodTrucks();
  }

  @override
  Widget build(BuildContext context) {
    _getTruckInfo();
    _getFoodTruckInfo();
    _getFeatInfo();
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
            _recomend(),
            _featured(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "images/Truck.png",
              color: Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                "images/MagnifyingGlass.png",
                // "images/Truck.png",
                color: Colors.black,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "images/Heart.png",
                color: Colors.black,
              ),
              label: "Favourites"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "images/Bell.png",
                color: Colors.black,
              ),
              label: "Updates"),
          // BottomNavigationBarItem(
          //   icon: Image.asset("assets/images/User.png"),
          //   label: 'Home',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person_2_rounded),
          //   label: 'Search',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.favorite),
          //   label: 'Favorites',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.favorite),
          //   label: 'Updates',
          // ),
        ],
      ),
    );
  }

  Column _featured() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Featured Food Trucks',
            style: TextStyle(
                fontFamily: 'Nunito',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          // OutlinedButton void (onPressed: () {}, child: Text('Click Here'),)
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          // color: Colors.blue,
          height: 320,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 210,
                decoration: BoxDecoration(
                    // color: feats[index].boxColor,
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: NetworkImage(feats[index].imagePath),
                      loadingBuilder: (context, child, loadingProgress) {
                        return loadingProgress == null
                            ? child
                            : const LinearProgressIndicator();
                      },
                      height: 188,
                      width: 278,
                      fit: BoxFit.cover,
                    ),
                    // const Icon(Icons.ac_unit_sharp),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            feats[index].name,
                            style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.favorite_border,
                              size: 10,
                            )),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${feats[index].price} | ${feats[index].cusine} | ${feats[index].rating}',
                        style: const TextStyle(
                            fontFamily: 'Nunito',
                            color: Color.fromARGB(255, 8, 8, 8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(feats[index].distance),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 15,
                      ),
                      child: Container(
                        height: 34,
                        width: 278,
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
                                fontFamily: 'Nunito',
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
            ),
            itemCount: feats.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
          ),
        ),
      ],
    );
  }

  Column _recomend() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Recommended For You',
            style: TextStyle(
                fontFamily: 'Nunito',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          // color: Colors.blue,
          height: 350,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 210,
                decoration: BoxDecoration(
                    // color: FoodfoodTrucks[index].boxColor,
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: NetworkImage(foodTrucks[index].imagePath),
                      loadingBuilder: (context, child, loadingProgress) {
                        return loadingProgress == null
                            ? child
                            : const LinearProgressIndicator();
                      },
                      height: 188,
                      width: 278,
                      fit: BoxFit.cover,
                    ),
                    // const Icon(Icons.ac_unit_sharp),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            foodTrucks[index].name,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Nunito',
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
                        '${foodTrucks[index].price} | ${foodTrucks[index].cusine} | ${foodTrucks[index].rating}',
                        style: const TextStyle(
                            fontFamily: 'Nunito',
                            color: Color.fromARGB(255, 8, 8, 8),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 15,
                      ),
                      child: Container(
                        height: 34,
                        width: 278,
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
                                fontFamily: 'Nunito',
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
            ),
            itemCount: foodTrucks.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
          ),
        ),
      ],
    );
  }

  Column _nearYou() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => exploreNear()),
            );
          },
          child: const Text('Explore All'),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Food Trucks Near You',
            style: TextStyle(
                fontFamily: 'Nunito',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          // color: Colors.blue,
          height: 350,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 200,
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
                      height: 188,
                      width: 278,
                      fit: BoxFit.cover,
                    ),
                    // const Icon(Icons.ac_unit_sharp),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            trucks[index].name,
                            style: const TextStyle(
                              fontFamily: 'Nunito',
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
                        '${trucks[index].price} * ${trucks[index].cusine} * ${trucks[index].rating}',
                        style: const TextStyle(
                            fontFamily: 'Nunito',
                            color: Color.fromARGB(255, 8, 8, 8),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 15,
                      ),
                      child: Container(
                        height: 34,
                        width: 278,
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
            ),
            itemCount: trucks.length,
            scrollDirection: Axis.horizontal,
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
            child: Stack(
              children: [
                ImageIcon(
                  AssetImage("images/user_ellipse.png"),
                  color: Color.fromARGB(255, 211, 21, 18),
                ),
                ImageIcon(
                  AssetImage("/images/User.png"),
                  color: Colors.white,
                ),
              ],
            ),
            // child: const Icon(
            //   // Icons.access_time_rounded,
            //   Icons.access_time_rounded,
            // ),
          ),
        ),
      ],
    );
  }
}
