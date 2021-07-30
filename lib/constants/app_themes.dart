import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xFF3469E9),
  accentColor: Color(0xFF2376E5),
  scaffoldBackgroundColor: Color(0xFFF6F5F5),
  textTheme: TextTheme(
    headline1: GoogleFonts.archivo(fontSize: 96.0, fontWeight: FontWeight.w300),
    headline2: GoogleFonts.archivo(fontSize: 60.0, fontWeight: FontWeight.w300),
    headline3: GoogleFonts.archivo(fontSize: 48.0, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.archivo(fontSize: 34.0, fontWeight: FontWeight.w400),
    headline5: GoogleFonts.archivo(fontSize: 24.0, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.archivo(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
    ),
    subtitle1: GoogleFonts.archivo(fontSize: 16.0, fontWeight: FontWeight.w400),
    subtitle2: GoogleFonts.archivo(fontSize: 14.0, fontWeight: FontWeight.w500),
    bodyText1: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w400),
    bodyText2: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w400),
    button: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    caption: GoogleFonts.poppins(fontSize: 12.0, fontWeight: FontWeight.w400),
    overline: GoogleFonts.poppins(fontSize: 10.0, fontWeight: FontWeight.w400),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color(0xFF3469E9),
  accentColor: Color(0xFF85A5F2),
  errorColor: Color(0xFFCF6679),
  textTheme: TextTheme(
    headline1: GoogleFonts.archivo(fontSize: 96.0, fontWeight: FontWeight.w300),
    headline2: GoogleFonts.archivo(fontSize: 60.0, fontWeight: FontWeight.w300),
    headline3: GoogleFonts.archivo(fontSize: 48.0, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.archivo(fontSize: 34.0, fontWeight: FontWeight.w400),
    headline5: GoogleFonts.archivo(fontSize: 24.0, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.archivo(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
    ),
    subtitle1: GoogleFonts.archivo(fontSize: 16.0, fontWeight: FontWeight.w400),
    subtitle2: GoogleFonts.archivo(fontSize: 14.0, fontWeight: FontWeight.w500),
    bodyText1: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w400),
    bodyText2: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w400),
    button: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    caption: GoogleFonts.poppins(fontSize: 12.0, fontWeight: FontWeight.w400),
    overline: GoogleFonts.poppins(fontSize: 10.0, fontWeight: FontWeight.w400),
  ),
);
