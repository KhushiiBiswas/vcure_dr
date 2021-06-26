import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  final String labeltext;
  final TextEditingController controller;
  const Password({
    this.labeltext,
    this.controller,
  });
  @override
  _PasswordState createState() => _PasswordState(text: labeltext);
}

class _PasswordState extends State<Password> {
  final String text;
  bool _isHidden = true;
  final ValueChanged<String> onChanged;
  _PasswordState({this.text, this.onChanged});

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20.0),
      child: TextFormField(
        controller: widget.controller,
        style: TextStyle(color: Colors.white),
        obscureText: _isHidden,
        decoration: InputDecoration(
            labelText: text,
            suffix: InkWell(
                onTap: _togglePasswordView,
                child: Icon(
                  _isHidden ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                )),
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffbdffae)))),
      ),
    );
  }
}
