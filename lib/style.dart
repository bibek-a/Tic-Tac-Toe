import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MeroStyle {
  static getStyle(double fontSize) {
    return GoogleFonts.josefinSans(
      textStyle: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.w600,
          fontSize: fontSize,
          letterSpacing: 0.2),
    );
  }

  static getStyle1() {
    return GoogleFonts.pacifico(
      textStyle: TextStyle(
          color: Color.fromARGB(255, 40, 2, 2),
          fontWeight: FontWeight.w100,
          fontSize: 35,
          letterSpacing: 0.4),
    );
  }

  static getStyle2(double fontSize) {
    return GoogleFonts.josefinSans(
      textStyle: TextStyle(
          color: Color.fromARGB(255, 45, 3, 3),
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          letterSpacing: 0.2),
    );
  }
}
