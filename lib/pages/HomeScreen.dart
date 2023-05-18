import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:soafablab/pages/BlogPage.dart';
import 'package:soafablab/pages/Contactpage.dart';
import 'package:soafablab/pages/Eventpage.dart';
import 'package:soafablab/pages/ProfilePage.dart';
import 'package:soafablab/pages/responsive_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    int _bottomNavIndex = 0;
  

  final screens = [const BlogPage(), const EventPage(), MyQrPage()];
  // List<IconData> iconList = [
  //   //list of icons that required by animated navigation bar.
  //   Icons.event_available_rounded,
  //   Icons.newspaper_sharp,
  //   Icons.supervised_user_circle,
  //   Icons.supervised_user_circle,
  // ];
  List<Widget>iconList = [
    // Icons.event_available_rounded,
    // Icons.newspaper_sharp,
    // Icons.supervised_user_circle,
    // Icons.supervised_user_circle,
     Icon(Icons.event, size: 30),
    Icon(Icons.newspaper_rounded, size: 30),
    Icon(Icons.verified_user_rounded, size: 30),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //scaffold
        body: Container(
          child: screens.elementAt(_bottomNavIndex),
        ),
        // floatingActionButton: FloatingActionButton(
        //     child: Icon(
        //       Icons.home_max_outlined,
        //       color: Color.fromARGB(255, 34, 184, 72),
        //     ),
        //     onPressed: () {
        //       // _bottomNavIndex = index;
        //     }),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomNavigationBar: AnimatedBottomNavigationBar(
          
        //   //navigation bar
        //   icons: iconList, //list of icons
        //   splashColor: Color.fromARGB(162, 255, 193, 7),
        //   borderColor: Color.fromARGB(255, 9, 153, 74),
        //   activeIndex: _bottomNavIndex,
        //   gapLocation: GapLocation.center,
        //   notchSmoothness: NotchSmoothness.verySmoothEdge,

        //   onTap: (index) => setState(() => _bottomNavIndex = index),

        //   activeColor: Colors.amber,
        //   backgroundColor: Color.fromARGB(71, 1, 10, 17),
        // ),
       bottomNavigationBar: ResponsiveLayout.isPhone(context)
          ? CurvedNavigationBar(
              index: _bottomNavIndex,
              // backgroundColor: Constants.purpleDark,
              buttonBackgroundColor: Color.fromARGB(213, 192, 209, 34),
              backgroundColor: Color.fromARGB(239, 0, 0, 0),
              items: iconList,
              onTap: (index) {
                setState(() {
                 _bottomNavIndex = index;
                });
              },
            )
          : SizedBox(),
    ));
  }
}

      
  
  

