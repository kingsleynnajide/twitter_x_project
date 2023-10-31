// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_x_project/bottomnav.dart';
import 'package:twitter_x_project/screens/home_screen.dart';
import 'package:twitter_x_project/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'twitter',
      home: JustBottom(),
      theme: ThemeData(
        primaryColor: Colors.black,
        
      ),
    );
  }
}
