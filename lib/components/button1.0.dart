import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const Button({
    Key key,
    this.text,
    this.press,
    this.color = Colors.white,
    this.textColor = Colors.greenAccent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.6,
      child: RawMaterialButton(
        fillColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
        onPressed: press,
        shape: const StadiumBorder(),
      ),
    );
  }
}
