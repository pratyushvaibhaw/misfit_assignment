import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Utils {
  static String icn = 'assets/icons/';
  static String img = 'assets/images/';

  static Text text(
      {double size = 30,
      FontWeight weight = FontWeight.bold,
      Color color = Colors.black,
      required String str}) {
    return Text(
      str,
      style: GoogleFonts.abel(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}
