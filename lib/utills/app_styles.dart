import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primary = const Color(0xFFFFFFFf);

class Styles {
  //Colors use in this project.
  //Color
  static Color boldBlue = const Color(0xFF01579B);
  static Color boldBlack = const Color(0xFF000000);
  static Color redButton = const Color(0xFFDD2C00);
  static Color whiteButton = const Color(0xFFFFFFFf);
  static Color greenColor = const Color(0xFF25D366);
  static Color textBlueColor = const Color(0xFF0165A3);
  static Color textRedColor = const Color(0xFFFD0807);
  static Color buttonRedBackgroundColor = const Color(0xFFFD0606);
  static Color barGreenColor = const Color(0xFF067011);
  static Color barDarkYellowColor = const Color(0xFFCFF000);
  static Color barLightYellowColor = const Color(0xFFB7AF00);
  static Color barOrangeColor = const Color(0xFFD95E05);
  static Color barDarkRedColor = const Color(0xFFB02000);

//Text Size
  static TextStyle heading1 =
      TextStyle(fontSize: 20, color: boldBlue, fontWeight: FontWeight.bold);
  static TextStyle heading2 = TextStyle(fontSize: 18, color: boldBlack);
  static TextStyle heading3 = TextStyle(fontSize: 20, color: whiteButton);
  static TextStyle heading4 =
      TextStyle(color: boldBlack, fontWeight: FontWeight.w900);

//Fonts Update
  static TextStyle iconTextColor = GoogleFonts.inter(
      textStyle: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          color: Color(0xFF000000),
          fontSize: 12));
}
