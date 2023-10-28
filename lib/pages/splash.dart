import 'dart:async';

import 'package:flutter/material.dart';

import 'bottomnavigationbar/design_bottom_navigation.dart';

class Splash extends StatelessWidget {
  // id
  static String routeName = "Splash";

  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, DesignBottomNavigation.routeName);
    });
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/splash.png"),
        fit: BoxFit.cover,
      )),
    );
  }
}
