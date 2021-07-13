import 'dart:js';

import 'package:flutter/material.dart';

class Common extends StatefulWidget {
  const Common({ Key key }) : super(key: key);

  @override
  _CommonState createState() => _CommonState();
}

class _CommonState extends State<Common> {
  String a,b,c,d,e;
  
  //String avaluechhose = "Item1";

  List<String> listItemtest = ["Item1", "Item2", "Item3", "Item4"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: DropdownButton(
        hint: Text("Main"),
      ),
    
    );
  }
}