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
  headline1: GoogleFonts.openSans(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  headline2: GoogleFonts.openSans(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  headline3: GoogleFonts.openSans(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  headline4: GoogleFonts.openSans(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  headline5: GoogleFonts.openSans(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  headline6: GoogleFonts.openSans(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  bodyText1: GoogleFonts.openSans(
    color: primaryTextColor,
    fontWeight: FontWeight.w200,
  ),
  bodyText2: GoogleFonts.openSans(
    color: primaryTextColor,
    fontWeight: FontWeight.w200,
  ),
  subtitle1: GoogleFonts.openSans(
    color: primaryTextColor,
    fontWeight: FontWeight.w400,
  ),
  button: GoogleFonts.openSans(
    color: primaryTextColor,
    fontWeight: FontWeight.bold,
  ),
);

IconThemeData _iconTheme = IconThemeData(
  color: whiteColor,
  size: 25,
);

InputDecorationTheme _inputDecoration = InputDecorationTheme(
  hintStyle: GoogleFonts.raleway(
    color: primaryTextColor,
    fontWeight: FontWeight.w500,
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: accentColor,
    ),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: accentColor,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: accentColor,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: errorColor,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: accentColor,
    ),
  ),
);
