import 'package:flutter/material.dart';
import 'package:sangam/src/ui/pages/home/home_page.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here.
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Comforta',
            fontSize: 17,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
