import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainD extends StatefulWidget {
  const MainD({ Key key }) : super(key: key);

  @override
  _MainDState createState() => _MainDState();
}

class _MainDState extends State<MainD> {
  String avaluechhose = "Aerospace Medicine";

  List<String> listItemtest = ["Aerospace Medicine", "Cardiology", "Corneal Transplant", "General Surgery"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: DropdownButton(
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 36,
        isExpanded: true,
        
        style: TextStyle(color: Colors.black, fontSize: 18),
        value: avaluechhose,
        onChanged: (newValue) {
          setState(() {
            avaluechhose = newValue;
          });
        },
        items: listItemtest.map((valueItem){
          return DropdownMenuItem(
            value: valueItem,
            child:Text(valueItem) 
            );
        }).toList(),
        
        )
      ,
      
    );
  }
}