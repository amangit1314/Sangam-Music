// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sangam_music/features/home/presentation/home_page.dart';
import 'package:sangam_music/features/library/library_screen.dart';
import 'package:sangam_music/features/search/presentation/search_page.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _currentIndex = 0;

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      const HomePage(),
      const LibraryScreen(),
    ];

    return Scaffold(
      extendBody: true,
      body: _pages[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchPage(),
            ),
          );
        },
        child: const FaIcon(
          FontAwesomeIcons.magnifyingGlass,
          size: 16,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        elevation: 1,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.music,
              size: 18,
              color: Theme.of(context).primaryColor,
            ),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.layerGroup,
              size: 18,
              color: Theme.of(context).primaryColor,
            ),
            label: 'Library',
          ),
        ],
        onTap: onTap,
      ),
    );
  }
}
