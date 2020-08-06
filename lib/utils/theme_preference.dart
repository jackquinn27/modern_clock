import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePreference {
  static const THEME = "THEME_DARK";

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME, value);
  }

  Future<bool> getThemePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(THEME) ?? false;
  }
}
