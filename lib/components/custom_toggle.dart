import 'package:flutter/material.dart';

class CustomToggle extends StatefulWidget {
  @override
  _CustomToggleState createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 30,
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
            print(isSwitched);
          });
        },
        activeTrackColor: Color(0xff03c8a8),
        activeColor: Color(0xff89d8d3),
      ),
    );
  }
}
