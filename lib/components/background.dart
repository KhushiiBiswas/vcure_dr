import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      //fit: StackFit.passthrough,
      // overflow: Overflow.visible,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff03c8a8), Color(0xff89d8d3)]),
          ),
        ),
        Container(
          child: Image.asset(
            "assets/Asset 9.png",
            alignment: Alignment.centerRight,
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.scaleDown,
          ),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          child: Image.asset(
            "assets/Asset 1 (1).png",
            alignment: Alignment.bottomLeft,
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.scaleDown,
          ),
        ),
        child,
      ],
    );
  }
}
