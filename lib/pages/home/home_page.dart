import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sangam/views/pages/activity.dart';
import 'package:sangam/views/pages/profile_page.dart';
import 'package:sangam/views/pages/search.dart';
import 'package:sangam/views/pages/settings.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _onTap() {
    // this has changed
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => _children[_currentIndex],
      ),
    ); // this has changed
  }

  final List<Widget> _children = [
    HomePage(),
    Search(),
    Activity(),
    ProfilePage()
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
        title: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            "Good afternoon",
            style: TextStyle(
              fontSize: 19,
              fontFamily: 'Comforta',
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(Settings());
            },
            icon: Icon(
              Icons.settings_accessibility_outlined,
              size: 20,
            ),
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(3),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          // height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Color.fromRGBO(18, 22, 64, 1.0)),
          child: Container(
            child: ListView(
              children: [
                SizedBox(height: 15),
                Text(
                  "Recently Played",
                  style: TextStyle(
                    fontSize: 21,
                    fontFamily: 'Comforta',
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    ListView(
                      children: [],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage("assets/bruno_mars.jpg"))
                          ],
                        ),
                        Row(
                          children: [
                            Image(image: AssetImage("assets/bruno_mars.jpg"))
                          ],
                        ),
                        Row(
                          children: [
                            Image(image: AssetImage("assets/bruno_mars.jpg"))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage("assets/skull.jpg"))
                          ],
                        ),
                        Row(
                          children: [
                            Image(image: AssetImage("assets/skull.jpg"))
                          ],
                        ),
                        Row(
                          children: [
                            Image(image: AssetImage("assets/skull.jpg"))
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.deepPurpleAccent,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note_outlined),
              // ignore: deprecated_member_use
              title: Text('Music'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              // ignore: deprecated_member_use
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined),
              // ignore: deprecated_member_use
              title: Text('Liked'),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              // ignore: deprecated_member_use
              title: Text('Account'),
            ),
          ],
          onTap: (index) {
            // this has changed
            setState(() {
              _currentIndex = index;
            });
            _onTap();
          },
        ),
      ),
    );
  }
}
