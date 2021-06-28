import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/button1.0.dart';
import 'package:vcure_doctors/pages/demo.dart';

class Slots extends StatefulWidget {
  const Slots({Key key}) : super(key: key);

  @override
  _SlotsState createState() => _SlotsState();
}

class _SlotsState extends State<Slots> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Button(press: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DoctorsInfo(),
          ),
        );
      }),
    );
  }
}
