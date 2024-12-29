import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../home/view/home_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // Define pages to display for each tab
  final List<Widget> _pages = [
    HomeScreen(),
    Center(child: Text("Search Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Profile Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Notifications Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Settings Page", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // The full-screen page content
          Positioned.fill(
            child: _pages[_currentIndex],
          ),
          // The CrystalNavigationBar at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CrystalNavigationBar(
              height: 70,
              margin: EdgeInsets.all(4),
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.black,
              backgroundColor: Colors.transparent,
              items: <CrystalNavigationBarItem>[
                CrystalNavigationBarItem(icon: Icons.home),
                CrystalNavigationBarItem(icon: Icons.search),
                CrystalNavigationBarItem(icon: Icons.person),
                CrystalNavigationBarItem(icon: Icons.notifications),
                CrystalNavigationBarItem(icon: Icons.settings),
              ],
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
