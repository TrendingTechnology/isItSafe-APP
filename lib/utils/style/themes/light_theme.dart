import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: primaryColor,
  accentColor: accentColorLight,
  scaffoldBackgroundColor: scaffoldBackgroundColorLight,
  errorColor: errorColor,
  splashColor: splashColorLight,
  disabledColor: greyColor,

  /// Sub themes
  textTheme: _textTheme,
  iconTheme: _iconTheme,
  inputDecorationTheme: _inputDecoration,
);

TextTheme _textTheme = TextTheme(
  headline1: GoogleFonts.poppins(
    color: primaryTextColorLight,
    fontWeight: FontWeight.w400,
  ),
  headline2: GoogleFonts.poppins(
    color: primaryTextColorLight,
    fontWeight: FontWeight.w400,
  ),
  headline3: GoogleFonts.poppins(
    color: primaryTextColorLight,
    fontWeight: FontWeight.w400,
  ),
  headline4: GoogleFonts.poppins(
    color: primaryTextColorLight,
    fontWeight: FontWeight.w400,
  ),
  headline5: GoogleFonts.poppins(
    color: primaryTextColorLight,
    fontWeight: FontWeight.w400,
  ),
  headline6: GoogleFonts.poppins(
    color: primaryTextColorLight,
    fontWeight: FontWeight.w400,
  ),
  bodyText1: GoogleFonts.poppins(
    color: primaryTextColorLight,
    fontWeight: FontWeight.w200,
  ),
  bodyText2: GoogleFonts.poppins(
    color: primaryTextColorLight,
    fontWeight: FontWeight.w200,
  ),
  subtitle1: GoogleFonts.poppins(
    color: primaryTextColorLight,
    fontWeight: FontWeight.w400,
  ),
  subtitle2: GoogleFonts.poppins(
    color: primaryTextColorLight,
    fontWeight: FontWeight.w400,
  ),
  button: GoogleFonts.poppins(
    color: whiteTextColorLight,
    fontWeight: FontWeight.bold,
  ),
);

IconThemeData _iconTheme = IconThemeData(
  color: primaryColor,
  size: 25,
);

InputDecorationTheme _inputDecoration = InputDecorationTheme(
  hintStyle: GoogleFonts.poppins(
    color: greyTextColorLight,
    fontWeight: FontWeight.w500,
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: greyColor,
    ),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: greyColor,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: greyColor,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: errorColor,
      width: 2,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: inputFocusedColor,
      width: 2,
    ),
  ),
);
