import 'package:flutter/material.dart';
import 'package:movie/pages/bottomnavigationbar/design_bottom_navigation.dart';
import 'package:movie/pages/splash.dart';

import 'core/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.light,
      initialRoute: Splash.routeName,
      routes: {
        Splash.routeName: (context) => const Splash(),
        DesignBottomNavigation.routeName: (context) =>
            const DesignBottomNavigation(),
      },
      home: const Splash(),
    );
  }
}
