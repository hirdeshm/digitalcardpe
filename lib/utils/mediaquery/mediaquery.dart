import 'package:flutter/material.dart';

class Cmediaquery {
  final BuildContext context;
  // Constructor to receive the BuildContext
  Cmediaquery(this.context);

  // Get the screen width
  double get screenWidth => MediaQuery.of(context).size.width;

  // Get the screen height
  double get screenHeight => MediaQuery.of(context).size.height;

  // Get the orientation (Portrait or Landscape)
  Orientation get orientation => MediaQuery.of(context).orientation;

  // Get the screen padding (useful for notches and system bars)
  EdgeInsets get padding => MediaQuery.of(context).padding;

  // Check if screen is in portrait mode
  bool get isPortrait => orientation == Orientation.portrait;

  // Check if screen is in landscape mode
  bool get isLandscape => orientation == Orientation.landscape;

  // Get the text scale factor for accessibility
  double get textScaleFactor => MediaQuery.of(context).textScaleFactor;

  // Get the pixel density of the screen
  double get devicePixelRatio => MediaQuery.of(context).devicePixelRatio;
}
