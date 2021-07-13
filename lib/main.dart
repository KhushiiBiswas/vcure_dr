import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/background.dart';

import 'package:vcure_doctors/pages/Appointment/Cancel_Appointment.dart';
import 'package:vcure_doctors/pages/Doctor_Details.dart';
import 'package:vcure_doctors/pages/kyc.dart';

import 'package:vcure_doctors/pages/sign_in/sign_in_body.dart';
import 'package:vcure_doctors/pages/slots/slots.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInBody(),
    );
  }
}
