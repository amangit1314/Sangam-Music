import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SangamMusicAppTextTheme {
  static TextTheme lightTextTheme = GoogleFonts.poppinsTextTheme().copyWith(
    titleLarge: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade900,
        height: 1.5,
      ),
    ),
    titleMedium: GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Colors.grey.shade900,
        fontSize: 18,
      ),
    ),
    displayMedium: GoogleFonts.poppins(
      textStyle: const TextStyle(
        color: Colors.grey,
        fontSize: 14,
      ),
    ),
  );

  static TextTheme darkTextTheme = GoogleFonts.poppinsTextTheme().copyWith(
    titleLarge: GoogleFonts.poppins(
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        height: 1.5,
      ),
    ),
    titleMedium: GoogleFonts.poppins(
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    ),
    displayMedium: GoogleFonts.poppins(
      textStyle: const TextStyle(
        color: Color(0xffC4C4C4),
        fontSize: 14,
      ),
    ),
  );
}
