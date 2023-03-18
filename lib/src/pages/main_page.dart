import 'package:flutter/material.dart';

import 'package:lifo/src/helper/quad_cipper.dart';

import 'package:lifo/src/pages/launcher_page.dart';
import 'package:lifo/src/pages/chat_page.dart';
import 'package:lifo/src/pages/chat_page.dart';
import 'package:lifo/src/pages/feed_page.dart';
import 'package:lifo/src/pages/profile_page.dart';
import 'package:lifo/src/pages/remainder_page.dart';
import 'package:lifo/src/pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Feed_page(),
    Search_page(),
    Chat_page(),
    Remainder_page(),
    Profile_page(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Raleway'),
      home: Scaffold(
        body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey.shade300,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: const Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: const Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: const Icon(Icons.add_circle_outline), label: ""),
            BottomNavigationBarItem(
                icon: const Icon(Icons.notifications_active), label: ""),
            BottomNavigationBarItem(icon: const Icon(Icons.person), label: ""),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
