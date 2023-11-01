// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_x_project/screens/groups.dart';
import 'package:twitter_x_project/screens/home_screen.dart';
import 'package:twitter_x_project/screens/message_screen.dart';
import 'package:twitter_x_project/screens/notifications.dart';
import 'package:twitter_x_project/screens/search_screen.dart';

class JustBottom extends StatefulWidget {
  const JustBottom({super.key});

  @override
  State<JustBottom> createState() => _JustBottomState();
}

class _JustBottomState extends State<JustBottom> {

  int currentIndex = 0;
  final screens = [
    HomeScreen(),
    TwitterSearchPage(),
    TwitterGroupPage(),
    TwitterNotificationsPage(),
    MessageScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
        canvasColor: Colors.black,
        ),
        child: BottomNavigationBar(

          type: BottomNavigationBarType.fixed,
          onTap: (index) => setState(() => currentIndex = index ),
          unselectedItemColor: Colors.white54,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
              label: ".",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.group),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.email_outlined),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}