import 'package:flutter/material.dart';

class ClockView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Theme.of(context).primaryColor);
  }
}
