import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/appointment_toogle.dart';
import 'package:vcure_doctors/components/background.dart';
import 'package:vcure_doctors/pages/Doctors_Panel/Doctors_FrontPage.dart';

import 'package:vcure_doctors/pages/kyc.dart';
import 'package:vcure_doctors/pages/slots/slots.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomToggle(),
    );
  }
}
