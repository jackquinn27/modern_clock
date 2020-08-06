import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modern_clock/assets/styles.dart';
import 'package:modern_clock/clock_view.dart';
import 'package:modern_clock/utils/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ModernClock());
}

class ModernClock extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ModernClockState();
}

class _ModernClockState extends State<ModernClock> {
  ThemeProvider themeProvider = new ThemeProvider();

  @override
  void initState() {
    super.initState();
    getThemeData();
  }

  void getThemeData() async {
    themeProvider.darkThemeEnabled =
        await themeProvider.darkThemePreference.getThemePreference();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) {
      return themeProvider;
    }, child: Consumer<ThemeProvider>(
      builder: (BuildContext context, value, Widget child) {
        
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarBrightness: themeProvider.darkThemeEnabled
                ? Brightness.dark
                : Brightness.light));

        return MaterialApp(
          theme: Styles.themeData(themeProvider.darkThemeEnabled, context),
          home: ClockView(),
        );
      },
    ));
  }
}
