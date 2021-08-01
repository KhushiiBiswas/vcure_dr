import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/background.dart';
import 'package:vcure_doctors/pages/sign_in/sign_in_body.dart';
import 'package:vcure_doctors/utils/api.dart';
import 'package:firebase_core/firebase_core.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  api.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _init = Firebase.initializeApp();
    return FutureBuilder(
      future: _init,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return MaterialApp(
      home: Background(child: SignInBody()),
    );
      },
    );
  }
}
