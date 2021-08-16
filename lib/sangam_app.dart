import 'package:flutter/material.dart';
import 'package:sangam/src/ui/pages/home/home_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sangam/pages/auth/login/login_page.dart';
import 'package:sangam/pages/auth/signup/sign_up.dart';
import 'package:sangam/pages/home/home_page.dart';
import 'package:sangam/pages/welcome.dart';

class SangamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.comfortaaTextTheme(),
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

