import 'package:flutter/material.dart';
import 'package:modern_clock/clock_view.dart';
import 'package:modern_clock/utils/color_provider.dart';

void main() {
  runApp(ModernClock());
}

class ModernClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ColorProvider.init(
        true,
        Color(0xFF0D0C0E),
        Color(0xFFFFFFFF),
        Color(0xFF222225),
        Color(0xFFFFFFFF),
        Color(0xFFFFFFFF),
        Color(0xFF101112),
        Color(0xFF7C7C7C),
        Color(0xFFA1B0CA));

    return MaterialApp(
      theme: ThemeData(
        primaryColor: ColorProvider().primaryColor,
        accentColor: ColorProvider().accentColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ClockView(),
    );
  }
}
