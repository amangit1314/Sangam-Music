import 'package:flutter/material.dart';
import 'package:sangam_music/core/utils/theme/text_theme.dart';

class SangamMusicAppColorTheme {
  SangamMusicAppColorTheme._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(),
    primarySwatch: Colors.deepPurple,
    hintColor: SangamMusicDefaultColors.lightHintColor,
    textTheme: SangamMusicAppTextTheme.lightTextTheme,
    primaryColorDark: SangamMusicDefaultColors.primaryColor,
    canvasColor: SangamMusicDefaultColors.lightBackgroundColor,
    primaryColorLight: SangamMusicDefaultColors.primaryLightColor,
    unselectedWidgetColor: SangamMusicDefaultColors.unselectedColor,
    iconTheme: IconThemeData(color: SangamMusicDefaultColors.lightHeadingColor),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(),
    primarySwatch: Colors.deepPurple,
    hintColor: SangamMusicDefaultColors.darkHintColor,
    textTheme: SangamMusicAppTextTheme.darkTextTheme,
    primaryColorDark: SangamMusicDefaultColors.primaryColor,
    canvasColor: SangamMusicDefaultColors.darkBackgroundColor,
    primaryColorLight: SangamMusicDefaultColors.primaryLightColor,
    unselectedWidgetColor: SangamMusicDefaultColors.unselectedColor,
    iconTheme: IconThemeData(color: SangamMusicDefaultColors.darkHeadingColor),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
  );
}

class SangamMusicDefaultColors {
  // default colors hard coded
  static Color blackColor = Colors.black;
  static Color greyColor = Colors.grey;
  static Color whiteColor = Colors.white;

  // * main colors
  static Color popColor = const Color.fromARGB(255, 77, 226, 246);
  static Color primaryColor = const Color.fromRGBO(18, 22, 64, 1.0);
  static Color primaryLightColor = const Color.fromARGB(255, 182, 169, 238);

  // light theme text colors
  static Color lightHeadingColor = Colors.grey.shade900;
  static Color lightTextColor = Colors.grey.shade600;
  static Color lightHintColor = Colors.grey.shade400;

  // dark theme text colors
  static Color darkHeadingColor = whiteColor.withOpacity(0.87);
  static Color darkTextColor = whiteColor.withOpacity(0.60);
  static Color darkHintColor = whiteColor.withOpacity(0.38);

  // ? selection colors
  static Color selectedColor = popColor;
  static Color unselectedColor = primaryColor.withOpacity(.3);

  // * app background colors
  static Color lightBackgroundColor = whiteColor;
  static Color darkBackgroundColor = SangamMusicDefaultColors.lightHeadingColor;

  // gradient colors
  static LinearGradient primaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [SangamMusicDefaultColors.primaryColor, blackColor],
  );
}
