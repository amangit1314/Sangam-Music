import 'package:flutter/material.dart';
import 'package:sangam_music/core/utils/theme/text_theme.dart';

class SangamMusicAppColorTheme {
  SangamMusicAppColorTheme._();
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.deepPurple,
    primaryColorDark: SangamMusicDefaultColors.primaryColor,
    primaryColorLight: SangamMusicDefaultColors.primaryLightColor,
    disabledColor: const Color(0xffFF9B85),
    unselectedWidgetColor: SangamMusicDefaultColors.textColor,
    shadowColor: const Color(0xffacacac),
    hintColor: Colors.white60,
    canvasColor: Colors.white,
    brightness: Brightness.light,
    textTheme: SangamMusicAppTextTheme.lightTextTheme,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.deepOrange,
    primaryColorDark: Colors.deepOrange,
    primaryColorLight: const Color(0xFFFBC386),
    disabledColor: const Color(0xffFF9B85),
    unselectedWidgetColor: const Color(0xFF20454E),
    shadowColor: const Color(0xffC4C4C4),
    hintColor: Colors.white60,
    brightness: Brightness.dark,
    textTheme: SangamMusicAppTextTheme.darkTextTheme,
    appBarTheme: const AppBarTheme(),
    canvasColor: Colors.grey.shade900,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    ),
  );
}

class SangamMusicDefaultColors {
  static Color primaryColor = const Color.fromRGBO(18, 22, 64, 1.0);
  static Color primaryLightColor = const Color.fromARGB(255, 182, 169, 238);
  Color headingColor = Colors.grey.shade900;
  static Color textColor = Colors.white24;
  static Color blackColor = const Color(0xFF000000);
  static Color whiteColor = const Color(0xFFFFFFFF);
  static Color greyColor = Colors.white38;

  static LinearGradient primaryGradientColor = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color.fromRGBO(18, 22, 64, 1.0), Colors.black],
  );
}
