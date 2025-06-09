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
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    TimeTablePage(),
    SearchPage(),
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
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                "assets/icons/HomeIcon.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                "assets/icons/TicketIcon.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                "assets/icons/WalletIcon.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                "assets/icons/SettingsIcon.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        body: _pages[_currentIndex],
      ),
    );
  }
}
