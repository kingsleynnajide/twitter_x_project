// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:twitter_x_project/screens/LoginScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Lottie.asset("assets/lottie/twitter.json",
    fit: BoxFit.fill,), nextScreen: LoginScreenWidget(),
    duration: 3000,
    backgroundColor: Colors.black,
    splashIconSize: 250,
    splashTransition: SplashTransition.fadeTransition,
    animationDuration: const Duration(seconds: 1),
    );
  }
}