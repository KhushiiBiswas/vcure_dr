import 'package:flutter/material.dart';

class CustomToggle extends StatefulWidget {
  const CustomToggle({Key key}) : super(key: key);

  @override
  _CustomToggleState createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  bool togglevalue = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 1000),
          height: 40.0,
          width: 100.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: togglevalue
                  ? Colors.greenAccent[100]
                  : Colors.redAccent[100].withOpacity(0.5)),
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.easeIn,
                  top: 3.0,
                  left: togglevalue ? 60.0 : 0.0,
                  right: togglevalue ? 0.0 : 60.0,
                  child: InkWell(
                    onTap: toggleButton,
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 1000),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return RotationTransition(
                            child: child, turns: animation);
                      },
                      child: togglevalue
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 35.0,
                              key: UniqueKey(),
                            )
                          : Icon(
                              Icons.remove_circle_outline,
                              color: Colors.red,
                              size: 35.0,
                              key: UniqueKey(),
                            ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  toggleButton() {
    setState(() {
      togglevalue = !togglevalue;
    });
  }
}
