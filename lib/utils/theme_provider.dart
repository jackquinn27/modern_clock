import 'package:flutter/material.dart';
import 'package:modern_clock/utils/theme_preference.dart';

class ThemeProvider with ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkThemeEnabled = false;

  bool get darkThemeEnabled => _darkThemeEnabled;

  set darkThemeEnabled(bool value) {
    _darkThemeEnabled = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }
}
