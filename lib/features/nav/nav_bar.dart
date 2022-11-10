import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sangam/features/home/presentation/home_page.dart';
import 'package:sangam/features/profile/presentation/profile_page.dart';
import 'package:sangam/features/search/presentation/search_page.dart';
import 'package:sangam/features/settings/settings.dart';

class NavPage extends StatefulWidget {
  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _currentIndex = 0;

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    List<Widget> _pages = [
      HomePage(),
      SearchPage(),
      ProfilePage(),
      Settings(),
    ];

    return Scaffold(
      extendBody: true,
      body: _pages[_currentIndex],
      bottomNavigationBar: ClipRRect(
        child: CurvedNavigationBar(
          height: 50,
          backgroundColor: Colors.transparent,
          items: <Widget>[
            FaIcon(
              FontAwesomeIcons.house,
              size: 30,
            ),
            FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 30,
            ),
            FaIcon(
              FontAwesomeIcons.heart,
              size: 30,
            ),
          ],
          onTap: onTap,
        ),
      ),
    );
  }
}
