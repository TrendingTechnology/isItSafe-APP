import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

ThemeData baseTheme = ThemeData(
  primaryColor: primaryColor,
  accentColor: accentColor,
  backgroundColor: backgroundColor,
  scaffoldBackgroundColor: backgroundColor,
  errorColor: errorColor,

  /// Sub themes
  textTheme: _textTheme,
  iconTheme: _iconTheme,
  inputDecorationTheme: _inputDecoration,
);

TextTheme _textTheme = TextTheme(
  headline1: GoogleFonts.poppins(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  headline2: GoogleFonts.poppins(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  headline3: GoogleFonts.poppins(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  headline4: GoogleFonts.poppins(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  headline5: GoogleFonts.poppins(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  headline6: GoogleFonts.poppins(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  bodyText1: GoogleFonts.poppins(
    color: primaryTextColor,
    fontWeight: FontWeight.w200,
  ),
  bodyText2: GoogleFonts.poppins(
    color: primaryTextColor,
    fontWeight: FontWeight.w200,
  ),
  subtitle1: GoogleFonts.poppins(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  button: GoogleFonts.poppins(
    color: primaryTextColor,
    fontWeight: FontWeight.bold,
  ),
);

IconThemeData _iconTheme = IconThemeData(
  color: primaryColor,
  size: 25,
);

InputDecorationTheme _inputDecoration = InputDecorationTheme(
  hintStyle: GoogleFonts.poppins(
    color: primaryTextColor,
    fontWeight: FontWeight.w500,
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: primaryColor,
    ),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: primaryColor,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: primaryColor,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: errorColor,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: inputFocusedColor,
    ),
  ),
);
