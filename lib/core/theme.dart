import 'package:flutter/material.dart';

class ApplicationTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF121312),

    // bottom Navigation Bar
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1A1A1A),
      selectedItemColor: Color(0xFFFFBB3B),
      selectedIconTheme: IconThemeData(
        color: Color(0xFFFFBB3B),
      ),
      unselectedItemColor: Color(0xFFFFFFFF),
      unselectedIconTheme: IconThemeData(
        color: Color(0xFFFFFFFF),
      ),
    ),
  );
}
