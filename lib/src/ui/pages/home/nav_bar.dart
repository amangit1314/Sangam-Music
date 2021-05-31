import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CurvedNavigationBar(
        // backgroundColor: Color(0xFF651fff),
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
            Icons.playlist_play_outlined,
            size: 30,
          ),
          Icon(
            Icons.subscriptions_outlined,
            size: 30,
          ),
          SvgPicture.asset('assets/icons/d_outlined.svg'),
        ],
        onTap: (index) {},
      ),
    );
  }
}
