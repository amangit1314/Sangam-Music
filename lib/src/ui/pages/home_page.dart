import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sangam/src/ui/pages/settings.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      body: Container(
        padding: EdgeInsets.all(5.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFF007F),
              Color(0xFF651fff),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 15.0, top: 15),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Row(
                  children: [
                    Text(
                      'Good afternoon',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontFamily: 'Comforta',
                      ),
                    ),
                    SizedBox(
                      width: 54,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Settings();
                            },
                          ),
                        );
                      },
                      icon: SvgPicture.asset(
                        'assets/icons/outlined_settings.svg',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFF651fff),
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
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
