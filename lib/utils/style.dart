import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color grey = Colors.grey;
  static final Color grey2 = Colors.grey[800] ?? grey;

  static final TextStyle title1 = GoogleFonts.montserrat(
      fontSize: 52,
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 16
        ..color = black,
      fontWeight: FontWeight.bold);

  static final TextStyle title1Background = GoogleFonts.montserrat(
      color: white, fontSize: 52, fontWeight: FontWeight.bold);

  static final TextStyle title2 = GoogleFonts.montserrat(
      color: black, fontSize: 24, fontWeight: FontWeight.bold);

  static final TextStyle title2white = GoogleFonts.montserrat(
      color: white, fontSize: 24, fontWeight: FontWeight.bold);

  static final TextStyle subtitle1 = GoogleFonts.montserrat(
      color: grey2, fontSize: 16, fontStyle: FontStyle.italic);

  static final TextStyle body1 =
      GoogleFonts.montserrat(color: black, fontSize: 12);
  static final TextStyle body1White =
      GoogleFonts.montserrat(color: white, fontSize: 12);
}
