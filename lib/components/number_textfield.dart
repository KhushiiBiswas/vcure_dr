import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberTextField extends StatelessWidget {
  final TextEditingController controller;
  const NumberTextField({
    Key key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        keyboardType: TextInputType.phone,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(10),
        ],
        decoration: InputDecoration(
          //hintText: "Enter Mobile Number",
          // hintStyle: TextStyle(color: Colors.white),
          labelText: "Mobile Number",
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffbdffae))),
          //validator: (value) {
          //if (value.isEmpty) {
          //return "Mobile Number cannot be empty";
          //}

          //return null;
          //},
        ),
      ),
    );
  }
}
