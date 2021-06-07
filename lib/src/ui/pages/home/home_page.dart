import 'package:flutter/material.dart';
import 'package:sangam/src/ui/pages/home/components/body.dart';
import 'package:sangam/src/ui/pages/home/components/nav_bar.dart';

class HomePage extends StatelessWidget {
  static String id = 'home_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 22, 64, 1.0),
      body: GetBody(),
      bottomNavigationBar: NavBar(),
    );
  }
}
