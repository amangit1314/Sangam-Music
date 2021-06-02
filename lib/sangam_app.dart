import 'package:flutter/material.dart';
import 'package:sangam/src/ui/pages/home/home_page.dart';
import 'package:sangam/src/ui/pages/login/login_page.dart';
import 'package:sangam/src/ui/pages/signup/register.dart';
import 'package:sangam/src/ui/pages/welcome.dart';
import 'package:sangam/src/utils/export.dart';

class SangamApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
        fontFamily: 'Comforta',
      ),
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
