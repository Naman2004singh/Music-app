import 'package:flutter/material.dart';

class AppConstants {
  static screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static const double mainPadding = 20.0;
  static const double smallPadding = 10.0;
  static const double borderRadius = 15.0;
  static const double size10 = 10.0;
  static const double size15 = 15.0;
  static const double size20 = 20.0;
  static const double size30 = 30.0;
}
