import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            size: 30,
          ),
          Icon(
            Icons.search_outlined,
            size: 30,
          ),
          Icon(
            Icons.queue_music_outlined,
            size: 30,
          ),
          Icon(
            Icons.playlist_play_outlined,
            size: 30,
          ),
          // SvgPicture.asset("assets/icons/d_outlined.svg"),
          Icon(
            Icons.person_outlined,
            size: 30,
          ),
        ],
      ),
    );
  }
}
