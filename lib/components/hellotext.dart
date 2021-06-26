import 'package:flutter/material.dart';

class HelloText extends StatelessWidget {
  const HelloText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Hello,\nHow can we help you\ntoday?",
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
