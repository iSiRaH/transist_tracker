import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:transist_tracker/pages/favourites_page.dart';
import 'package:transist_tracker/pages/home_page.dart';
import 'package:transist_tracker/pages/profile_page.dart';
import 'package:transist_tracker/pages/search_page.dart';
import 'package:transist_tracker/pages/time_table_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 2;

  final List<Widget> _pages = [
    TimeTablePage(),
    SearchPage(),
    HomePage(),
    FavouritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Transist tracker",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          buttonBackgroundColor: Colors.blue,
          backgroundColor: Colors.white,
          color: Colors.blue,
          animationCurve: Curves.easeIn,
          animationDuration: Duration(milliseconds: 600),
          items: <Widget>[
            Icon(
              Icons.schedule,
              size: 40,
            ),
            Icon(
              Icons.search,
              size: 40,
            ),
            Icon(
              Icons.map,
              size: 40,
            ),
            Icon(
              Icons.favorite,
              size: 40,
            ),
            Icon(
              Icons.person,
              size: 40,
            ),
          ],
        ),
        body: _pages[_currentIndex],
      ),
    );
  }
}
