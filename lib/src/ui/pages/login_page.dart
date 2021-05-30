import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      body: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/Sangam.png'),
            width: 500,
            height: 500,
          ),
        ],
      ),
    );
  }
}
