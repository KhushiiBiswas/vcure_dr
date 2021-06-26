import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/background.dart';
import 'package:vcure_doctors/pages/sign_in/sign_in_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Background(child: SignInBody()),
    );
  }
}
