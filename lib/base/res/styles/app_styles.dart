import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class AppStyles {

  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xff3b3b3b);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFd2bdb6);
  static Color ticketTabColor = const Color(0xFFF4F6FD);
  static Color planeColor = const Color(0xFFBFC2DF);
  static Color findTicketColor = const Color(0xD91130CE);
  static Color circleColor = const Color(0xFF189999);
  static Color ticketColor = const Color(0xFFFFFFFF);
  static Color dotColor = const Color(0xFF8ACCF7);
  static Color planeSecondColor = const Color(0xFFBACCF7);


  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    color: textColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    color: textColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headLineStyle3 = TextStyle(
    fontSize: 17,
    //color: textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle4 = TextStyle(
    fontSize: 14,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
}