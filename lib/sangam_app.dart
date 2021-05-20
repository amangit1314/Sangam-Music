import 'package:flutter/material.dart';
import 'package:sangam/ui/pages/home_page.dart';
import 'package:sangam/ui/pages/login_page.dart';
import 'package:sangam/ui/pages/register.dart';
import 'package:sangam/ui/pages/welcome.dart';

class SangamApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan, fontFamily: 'Comforta'),
      home: HomePage(),
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        LoginPage.id: (context) => LoginPage(),
        SignUpPage.id: (context) => SignUpPage(),
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
