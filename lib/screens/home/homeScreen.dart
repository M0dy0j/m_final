import 'package:flutter/material.dart';
import 'package:m_final/screens/favourites.dart';
import 'package:m_final/screens/home/home.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int selected = 1;

  List<Widget> pages = [
    Container(),
    Container(),
    home(),
    Favourites(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selected,
        selectedItemColor: Color(0xffF3651F),
        unselectedItemColor: Color(0xffD8D8D8),
        onTap: (i) {
          setState(() {
            selected = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: selected != 0 ? Icon(Icons.document_scanner_outlined) : Icon(Icons.document_scanner),
            label: 'document',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: selected == 2 ? Icon(Icons.compass_calibration) : Icon(Icons.compass_calibration_outlined),
            label: 'compass',
          ),
          BottomNavigationBarItem(
            icon: selected == 3
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border_outlined),
            label: 'compass',
          ),
          BottomNavigationBarItem(
            icon: selected != 4
                ? Icon(Icons.person_2_outlined)
                : Icon(Icons.person),
            label: 'compass',
          ),
        ],
      ),
      body: SafeArea(child: pages.elementAt(selected)),
    );
  }
}
