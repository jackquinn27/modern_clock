import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkMode, BuildContext context) {
    return ThemeData(
      primaryColor: isDarkMode? Color(0xFF0D0C0E) : Color(0xFFFFFFFF),
      accentColor: isDarkMode? Color(0xFF222225) : Color(0xFFFFFFFF),
      textTheme: isDarkMode? _textTheme(true) : _textTheme(false),
      fontFamily: 'Lato'
    );
  }

  static TextTheme _textTheme(bool isDarkMode) {
    return TextTheme(
      // Clock style
      headline1: TextStyle(
        color: isDarkMode? Color(0xFFFFFFFF) : Color(0xFF101112),
        fontSize: 24
      ),
      // Card clock style
      headline2: TextStyle(
        color: isDarkMode? Color(0xFFFFFFFF) : Color(0xFF101112),
        fontSize: 24
      ),
      // Card location style
      headline3: TextStyle(
        color: isDarkMode? Color(0xFFFFFFFF) : Color(0xFF101112),
        fontSize: 12
      ),
      // Top location label
      subtitle1: TextStyle(
        color: isDarkMode? Color(0xFFFFFFFF) : Color(0xFF101112),
        fontSize: 12
      ),
      // AM/PM label
      subtitle2: TextStyle(
        color: isDarkMode? Color(0xFFFFFFFF) : Color(0xFF101112),
        fontSize: 12
      ),
      // Matches Sub 3 on design spec (Clock offset label and card AM/PM)
      headline4: TextStyle(
        color: isDarkMode? Color(0xFFFFFFFF) : Color(0xFF101112),
        fontSize: 12
      ),
      button: TextStyle(
        color: isDarkMode? Color(0xFFFFFFFF) : Color(0xFF101112),
        fontSize: 16
      )
    );
  }
}
