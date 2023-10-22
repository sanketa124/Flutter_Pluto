import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../core/constants/my_colors.dart';
import 'home/home_screen_imports.dart';
import 'playlists/playlists_screen_imports.dart';
import 'song/song_screen_imports.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = [
    const HomeScreen(),
    const SongScreen(),
    const PlaylistsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: MyColors.deepPurple1,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        dotIndicatorColor: MyColors.white,
        unselectedItemColor: MyColors.white,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: const Icon(LineIcons.home),
            selectedColor: MyColors.white,
          ),

          /// PlayLists
          DotNavigationBarItem(
            icon: const Icon(LineIcons.playCircle),
            selectedColor: MyColors.white,
          ),

          /// Song
          DotNavigationBarItem(
            icon: const Icon(LineIcons.heart),
            selectedColor: MyColors.white,
          ),
        ],
      ),
    );
  }
}
