import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waterdrink/themes/appcolor.dart';

class AppTheme {
  var appTheme = ThemeData(
    fontFamily: 'Poppins',
    textTheme: TextTheme(
      headline1: GoogleFonts.roboto(
          fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      headline2: GoogleFonts.roboto(
          fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      headline3: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w400),
      headline4: GoogleFonts.roboto(
          fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headline5: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w400),
      headline6: GoogleFonts.roboto(
          fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      subtitle1: GoogleFonts.roboto(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      subtitle2: GoogleFonts.roboto(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      bodyText1: GoogleFonts.roboto(
          fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyText2: GoogleFonts.roboto(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      button: GoogleFonts.roboto(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      caption: GoogleFonts.roboto(
          fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      overline: GoogleFonts.roboto(
          fontSize: 9, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    ),
    iconTheme: const IconThemeData(size: 22),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle:
          TextStyle(color: Colors.blueGrey, letterSpacing: 2, wordSpacing: 2),
      iconTheme: IconThemeData(color: Colors.blueGrey),
      elevation: 0,
    ),
  );
}
