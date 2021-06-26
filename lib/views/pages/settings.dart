import 'package:flutter/material.dart';

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
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here.
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            )),
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
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              width: 320,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
