import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
          ),
        ],
      ),
    );
  }
}
