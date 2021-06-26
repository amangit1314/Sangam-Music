import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sangam/views/pages/auth/login/login_page.dart';
import 'package:sangam/views/pages/auth/signup/sign_up.dart';
import 'package:sangam/views/pages/home/home_page.dart';
import 'package:sangam/views/pages/welcome.dart';

class SangamApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
