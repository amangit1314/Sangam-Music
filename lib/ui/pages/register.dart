import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static String id = 'sign_up_page';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      body: Column(children: <Widget>[
        Image(
          image: AssetImage('assets/images/Sangam.png'),
          width: 500,
          height: 500,
        ),
      ]),
    );
  }
}
