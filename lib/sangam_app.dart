import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sangam/ui/pages/home/home_page.dart';
import 'package:sangam/ui/pages/settings.dart';
import 'package:sangam/ui/pages/welcome.dart';

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
        '/welcome': (context) => WelcomePage(),
        '/home': (context) => HomePage(),
        'settings': (context) => Settings(),
      },
    );
  }
}