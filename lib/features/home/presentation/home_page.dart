import 'package:flutter/material.dart';
import 'package:sangam/features/home/presentation/components/body.dart';

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
      body: SafeArea(
        child: HomeBody(),
      ),
    );
  }
}
