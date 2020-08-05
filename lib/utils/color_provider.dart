import 'package:flutter/material.dart';

class ColorProvider {
  static ColorProvider _instance;

  static Color _primaryColor;
  static Color _accentColor;
  static Color _textColor;
  static Color _textAccentColor;

  Color _primaryDarkColor;
  Color _accentDarkColor;
  Color _primaryLightColor;
  Color _accentLightColor;
  Color _textDarkColor;
  Color _textLightColor;
  Color _textDarkAccentColor;
  Color _textLightAccentColor;
  bool _isDarkMode;

  ColorProvider._();

  factory ColorProvider() {
    return _instance;
  }

  static void init(
      bool isDarkMode,
      Color primaryDarkColor,
      Color primaryLightColor,
      Color accentDarkColor,
      Color accentLightColor,
      Color textDarkColor,
      Color textLightColor,
      Color textDarkAccentColor,
      Color textLightAccentColor) {
    if (_instance == null) {
      _instance = ColorProvider._();
    }

    _instance._primaryDarkColor = primaryDarkColor;
    _instance._primaryLightColor = primaryLightColor;
    _instance._accentDarkColor = accentDarkColor;
    _instance._accentLightColor = accentLightColor;
    _instance._textDarkColor = textDarkColor;
    _instance._textLightColor = textLightColor;
    _instance._textDarkAccentColor = textDarkAccentColor;
    _instance._textLightAccentColor = textLightAccentColor;
    _instance._isDarkMode = isDarkMode;

    _primaryColor =
        isDarkMode ? _instance._primaryDarkColor : _instance._primaryLightColor;
    _accentColor =
        isDarkMode ? _instance._accentDarkColor : _instance._accentLightColor;
    _textColor =
        isDarkMode ? _instance._textDarkColor : _instance._textLightColor;
    _textAccentColor = isDarkMode
        ? _instance._textDarkAccentColor
        : _instance._textLightAccentColor;
  }

  Color get primaryColor => _primaryColor;

  Color get accentColor => _accentColor;

  Color get textColor => _textColor;

  Color get textAccentColor => _textAccentColor;

  bool get isDarkMode => _isDarkMode;
}
