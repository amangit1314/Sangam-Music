import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sangam/src/ui/pages/home/home_page.dart';
import 'package:sangam/src/ui/pages/music/your_library.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  //State class
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
        key: _bottomNavigationKey,
        items: <Widget>[
          IconButton(
              icon: Icon(Icons.home_outlined),
              onPressed: () {
                setState(() {
                  Get.to(HomePage());
                });
              }),
          Icon(
            Icons.search_outlined,
            size: 30,
          ),
          Icon(
            Icons.playlist_play_outlined,
            size: 30,
          ),
          IconButton(
              icon: Icon(Icons.library_music),
              onPressed: () {
                setState(() {
                  Get.to(YourLibrary());
                });
              }),
          SvgPicture.asset("assets/icons/d_outlined.svg"),
          // SvgPicture.asset('assets/icons/d_outlined.svg'),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
