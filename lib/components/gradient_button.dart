import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color;
  const GradientButton({
    Key key,
    this.text,
    this.press,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(29),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff03c8a8), Color(0xff89d8d3)]),
        ),
        child: TextButton(
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                color: Colors.grey.shade800,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
      ),
    );
  }
}
