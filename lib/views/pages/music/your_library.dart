import 'package:flutter/material.dart';

class YourLibrary extends StatefulWidget {
  @override
  _YourLibraryState createState() => _YourLibraryState();
}

class _YourLibraryState extends State<YourLibrary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here.
        ),
      ),
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
    );
  }
}
