import 'package:flutter/material.dart';
import 'package:movie/pages/search/browse/browse.dart';
import 'package:movie/pages/search/home/home_view.dart';
import 'package:movie/pages/search/watchlist.dart';

import '../search/search/search_view.dart';

class DesignBottomNavigation extends StatefulWidget {
  static String routeName = "home";

  const DesignBottomNavigation({super.key});

  @override
  State<DesignBottomNavigation> createState() => _HomeState();
}

class _HomeState extends State<DesignBottomNavigation> {
  int selectedIndex = 0;
  List<Widget> screen = [
    const HomeView(),
    const SearchView(),
    const BrowseView(),
    const Watchlist(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/Home icon.png"),
              ),
              label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "SEARCH"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/Icon material-movie.png"),
              ),
              label: "Browse"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/Icon ionic-md-bookmarks.png"),
              ),
              label: "Watchlist")
        ],
      ),
    );
  }
}
