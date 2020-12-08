import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinderedecommerce/HomePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kinderedecommerce/ProfilePage.dart';
import 'package:kinderedecommerce/Store.dart';
import 'package:kinderedecommerce/explore_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    HomePage(),
    StorePage(),
    HomePage(),
    ExploreScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped, // new
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          // new
          items: [
            new BottomNavigationBarItem(
              label: "Home",
              backgroundColor: Colors.white,
              icon: ImageIcon(
                AssetImage("assets/home.png"),
                size: 50,
                color: _currentIndex == 0 ? Colors.red : Colors.black,
              ),
            ),
            new BottomNavigationBarItem(
              label: "Store",
              icon: ImageIcon(
                AssetImage("assets/apps.png"),
                size: 50,
                color: _currentIndex == 1 ? Colors.red : Colors.black,
              ),
            ),
            new BottomNavigationBarItem(
                label: "Gold",
                icon: ImageIcon(
                  AssetImage("assets/Gold.png"),
                  size: 50,
                  color: _currentIndex == 2 ? Colors.red : Colors.black,
                )),
            new BottomNavigationBarItem(
                label: "Explore",
                icon: ImageIcon(
                  AssetImage("assets/explore.png"),
                  size: 50,
                  color: _currentIndex == 3 ? Colors.red : Colors.black,
                )),
            new BottomNavigationBarItem(
              label: "Orders",
              icon: ImageIcon(
                AssetImage("assets/Profile.png"),
                size: 50,
                color: _currentIndex == 4 ? Colors.red : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MainPart extends StatefulWidget {
  @override
  _MainPartState createState() => _MainPartState();
}

class _MainPartState extends State<MainPart> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
