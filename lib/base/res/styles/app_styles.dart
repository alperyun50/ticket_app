import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xff3b3b3b);

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    color: textColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headLineStyle3 = TextStyle(
    fontSize: 17,
    color: textColor,
    fontWeight: FontWeight.w500,
  );
}