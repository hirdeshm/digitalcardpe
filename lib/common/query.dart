import 'package:flutter/material.dart';

class Dimen {
  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width ;
  }

  static double getAspectRatio(BuildContext context) {
    return MediaQuery.of(context).size.aspectRatio;
  }

  static double getTextScaleFactor(BuildContext context) {
    return MediaQuery.of(context).textScaleFactor;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600; // Change breakpoint as needed
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width < 1200; // Change breakpoint as needed
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200; // Change breakpoint as needed
  }
}
