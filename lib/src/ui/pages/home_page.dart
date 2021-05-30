import 'package:flutter/material.dart';

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
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
              ),
              Text(
                'Good afternoon',
                style: TextStyle(
                    fontSize: 28, color: Colors.white, fontFamily: 'Comfortaa'),
              ),
              SizedBox(
                width: 40,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
