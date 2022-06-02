import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const darkGreen = Color(0xFF064728);

ColorScheme umuziColorScheme() {
  return const ColorScheme.light(
      primary: Color(0xFF077A44),
      secondary: Color(0xFFE5BA05),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      background: Colors.white,
      primaryContainer: Colors.white);
}

TextTheme umuziTextTheme() {
  const textTheme = TextTheme(
      headline1: TextStyle(
        fontSize: 36,
        letterSpacing: 0.75,
      ),
      headline2: TextStyle(
        fontSize: 32,
        letterSpacing: 0.5,
      ),
      headline3: TextStyle(
        fontSize: 30,
        letterSpacing: 0.25,
      ),
      headline4: TextStyle(
        fontSize: 28,
        letterSpacing: 0.75,
      ),
      headline5: TextStyle(
        fontSize: 24,
        letterSpacing: 0.75,
      ),
      headline6: TextStyle(
        fontSize: 20,
        letterSpacing: 0.75,
      ),
      bodyText1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      bodyText2: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
  );

  return GoogleFonts.bungeeInlineTextTheme(textTheme).copyWith(
      bodyText1: GoogleFonts.openSans(textStyle: textTheme.bodyText1),
      bodyText2: GoogleFonts.openSans(textStyle: textTheme.bodyText2));
}
