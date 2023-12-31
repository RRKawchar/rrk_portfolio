import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle headerTextStyle({Color color = Colors.white,double fontSize=18}) {
    return GoogleFonts.signikaNegative(
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle montserratStyle(
      {required Color color, double fontSize = 24}) {
    return GoogleFonts.montserrat(
      fontWeight: FontWeight.w800,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle headingStyle(
      {double fontSize = 36, Color color = Colors.white}) {
    return GoogleFonts.rubikMoonrocks(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: color,
        letterSpacing: 2);
  }

  static TextStyle normalStyle(
      {Color color = Colors.grey,
        FontWeight fontWeight=FontWeight.normal,
      double fontSize = 16.0,
      double height = 1.5}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      letterSpacing: 1.7,
      height: height,
    );
  }

  static TextStyle comfortaaStyle() {
    return GoogleFonts.comfortaa(
        fontSize: 18, fontWeight: FontWeight.w800, color: Colors.grey);
  }

  static TextStyle archivoNarrow({double fontSize=80}) {
    return GoogleFonts.archivoNarrow(
        fontWeight: FontWeight.bold, fontSize: fontSize, color: Colors.white);
  }
}
