import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:modern_clock/utils/theme_provider.dart';
import 'package:provider/provider.dart';

class ClockView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    ScreenUtil.init(context, width: 1242, height: 2688);

    return Container(
        color: Theme.of(context).primaryColor,
        child: MaterialButton(
          onPressed: () {
            themeProvider.darkThemeEnabled = !themeProvider.darkThemeEnabled;
        },
        child: Container(
          height: 50,
          width: 120,
          color: Colors.grey,
          child: Center(child: Text("Change Theme")),
        ),
      )
    );
  }
}
