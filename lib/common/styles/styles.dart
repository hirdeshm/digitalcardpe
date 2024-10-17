import 'package:flutter/material.dart';

class Ccolor {
  static  Gradient Gprimary =  LinearGradient(
    colors: [
      const Color(0xFFB3E5FC).withOpacity(0.2), // Light blue color
      const Color(0xFFFFE082), // Light yellow color
    ],
    begin: Alignment.topLeft,
    end: Alignment.topRight,
  );
  static const Color primary = Color(0xFFD85D00);
  static const Color accent = Color(0xFFFFE082);
  static const Color background = Color(0xFFF5F5F5);
  static const Color text = Color(0xFF333333);

  // Greyscale palette
  static const Color grey = Color(0xFF9E9E9E);
  static const Color lightGrey = Color(0xFFEEEEEE);
  static const Color darkGrey = Color(0xFF424242);

  // Error colors
  static const Color error = Color(0xFFB00020);
}
class Cgradient{
  static  Gradient primary =  LinearGradient(
    colors: [
      const Color(0xFFB3E5FC).withOpacity(0.2), // Light blue color
      const Color(0xFFFFE082), // Light yellow color
    ],
    begin: Alignment.topLeft,
    end: Alignment.topRight,
  );
  static  Gradient secondary =  LinearGradient(
    colors: [
      const Color(0xFFFFFFFF), // Light blue color
      const Color(0xFFA6E7F4).withOpacity(0.5), // Light yellow color
    ],
    begin: Alignment.topLeft,
    end: Alignment.centerLeft,
  );
}

class Ctextstyle {
  static const TextStyle heading = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle subheading = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

class Cimage {
  static const String primarylogo = '';
  static const String secondarylogo = '';

  /*static const String primarylogo = '';
  static const String primarylogo = '';
  static const String primarylogo = '';
  static const String primarylogo = '';*/
}

class Ctext {
  static const String introm1 = 'build your own identity card and easy to share it just by scan and you can trace your card progress ';
}
