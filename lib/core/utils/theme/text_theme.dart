import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class SangamMusicAppTextTheme {
  static TextTheme lightTextTheme = GoogleFonts.poppinsTextTheme().copyWith(
    titleLarge: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.bold,
        color: SangamMusicDefaultColors.lightHeadingColor,
      ),
    ),
    titleMedium: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: SangamMusicDefaultColors.lightHeadingColor,
      ),
    ),
    titleSmall: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: SangamMusicDefaultColors.lightHeadingColor,
      ),
    ),
    displayLarge: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 16,
        color: SangamMusicDefaultColors.lightTextColor,
      ),
    ),
    displayMedium: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 14,
        color: SangamMusicDefaultColors.lightTextColor,
      ),
    ),
    displaySmall: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 12,
        color: SangamMusicDefaultColors.lightTextColor,
      ),
    ),
  );

  static TextTheme darkTextTheme = GoogleFonts.poppinsTextTheme().copyWith(
    titleLarge: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.bold,
        color: SangamMusicDefaultColors.darkHeadingColor,
      ),
    ),
    titleMedium: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: SangamMusicDefaultColors.darkHeadingColor,
      ),
    ),
    titleSmall: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: SangamMusicDefaultColors.darkHeadingColor,
      ),
    ),
    displayLarge: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 16,
        color: SangamMusicDefaultColors.darkTextColor,
      ),
    ),
    displayMedium: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 14,
        color: SangamMusicDefaultColors.darkTextColor,
      ),
    ),
    displaySmall: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 12,
        color: SangamMusicDefaultColors.darkTextColor,
      ),
    ),
  );
}
