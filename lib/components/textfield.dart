import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  const InputTextField({
    Key key,
    this.labelText,
    this.onChanged,
    this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20.0),
        child: TextField(
          controller: controller,
          style: TextStyle(color: Colors.white),
          onChanged: onChanged,
          cursorColor: Colors.white,
          decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffbdffae)))),
        ),
      ),
    );
  }
}
