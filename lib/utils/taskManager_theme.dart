import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskManagerTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline3: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: Colors.black,
    ),
    headline4: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    button: GoogleFonts.openSans(
      color: Colors.white,
      fontSize: 15,
    ),
    caption: GoogleFonts.openSans(
      color: Colors.grey,
      fontSize: 13,
    ),
  );
  static TextTheme darkText = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
      // fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline3: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: Colors.white,
    ),
    headline4: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    button: GoogleFonts.openSans(
      color: Colors.white,
      fontSize: 15,
    ),
    caption: GoogleFonts.openSans(
      color: Colors.grey,
      fontSize: 13,
    ),
  );
  static ThemeData light() {
    return ThemeData(
        brightness: Brightness.light,
        checkboxTheme: CheckboxThemeData(
          fillColor:
              MaterialStateProperty.resolveWith((states) => Colors.black),
        ),
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.green,
          backgroundColor: Colors.white,
        ),
        textTheme: lightTextTheme,
        primaryColor: Colors.white);
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff222222),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
        backgroundColor: Color(0xff222222),
      ),
      primaryColor: Color(0xff222222),
      textTheme: darkText,
    );
  }
}
