import 'package:flutter/material.dart';
// import 'package:waiting_list/pages/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  void _NavigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // final List<Widget> _pages = [
  //   HomePage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _NavigateBottomBar,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline_rounded,
              color: Colors.black,
            ),
            label: "Favourites"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_sharp,
              color: Colors.black,
            ),
            label: "Updates"),
      ],
    );
  }
}
