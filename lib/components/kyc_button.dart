import 'package:flutter/material.dart';

class Buttonkyc extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const Buttonkyc({
    Key key,
    this.text,
    this.press,
    this.color = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.6,
      child: RawMaterialButton(
        fillColor: Color(0xff89d8d3),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Text(
            text,
            style: TextStyle(color: textColor,fontSize: 20),
          ),
        ),
        onPressed: press,
        shape: const StadiumBorder(),
      ),
    );
  }
}
