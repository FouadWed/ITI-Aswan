import 'package:flutter/material.dart';

import 'Cat.dart';
import 'Fav.dart';
import 'Movies & API.dart';
import 'Settings.dart';


class MovieLayout extends StatefulWidget {
  @override
  State<MovieLayout> createState() => _MovieLayoutState();
}

class _MovieLayoutState extends State<MovieLayout> {
  int currentIndex = 0;

  List<Widget> bottomScreens = [
    MoviesScreen(),
    CategoriesScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ];

  List<String> titles = [
    "SEE",
    "Cat",
    "Fav",
    "Settings",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
          style: TextStyle(
            fontSize: 25.0,
            color: Color(0xff1bad1c),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.search,
            ),
          ),
        ],
        backgroundColor: Color(0xff191826),
      ),
      body: bottomScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Color(0xff1bad1c),
        unselectedItemColor: Colors.grey,
        backgroundColor: Color(0xff191826),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_max,
            ),
            label: 'Main',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.apps_outage_rounded,
            ),
            label: 'Cat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline_rounded,
            ),
            label: 'Fav',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_applications_rounded,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}