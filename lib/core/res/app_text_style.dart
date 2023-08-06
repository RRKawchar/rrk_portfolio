import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle headerTextStyle() {
    return GoogleFonts.signikaNegative(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white);
  }

  static TextStyle montserratStyle({required Color color}) {
    return GoogleFonts.montserrat(
      fontWeight: FontWeight.w800,
      fontSize: 24,
      color: color,
    );
  }
  static TextStyle headingStyle(){

    return GoogleFonts.rubikMoonrocks(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: 2

    );
  }

  static TextStyle normalStyle(){
    return GoogleFonts.signikaNegative(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 1
    );
  }
}
