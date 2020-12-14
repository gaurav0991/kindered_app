import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:kinderedecommerce/Gold_page.dart';
import 'package:kinderedecommerce/HomePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kinderedecommerce/ProfilePage.dart';
import 'package:kinderedecommerce/Store.dart';
import 'package:kinderedecommerce/explore_screen.dart';
import 'package:kinderedecommerce/providers/LoginProvider.dart';
import 'package:kinderedecommerce/providers/exploreprovider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'db/DB.dart';

void main() async {
  await Hive.initFlutter();
  DB.box = await Hive.openBox(DB.boxName);

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<loginProvider>(
      create: (_) => loginProvider(),
    ),
    ChangeNotifierProvider<exploreProvider>(
      create: (_) => exploreProvider(),
    )
  ], child: MyApp()));
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
    GoldPage(),
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
              icon: SvgPicture.asset(
                "assets/Untitled-1-02.svg",
                color: _currentIndex == 0 ? Colors.red : Colors.black,
              ),
            ),
            new BottomNavigationBarItem(
              label: "Store",
              icon: SvgPicture.asset(
                "assets/Untitled-1-03.svg",
                color: _currentIndex == 1 ? Colors.red : Colors.black,
              ),
            ),
            new BottomNavigationBarItem(
                label: "Gold",
                icon: SvgPicture.asset(
                  "assets/Untitled-1-04.svg",
                  color: _currentIndex == 2 ? Colors.red : Colors.black,
                )),
            new BottomNavigationBarItem(
              label: "Explore",
              icon: SvgPicture.asset(
                "assets/Untitled-1-05.svg",
                color: _currentIndex == 3 ? Colors.red : Colors.black,
              ),
            ),
            new BottomNavigationBarItem(
              label: "Orders",
              icon: SvgPicture.asset(
                "assets/Untitled-1-06.svg",
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
