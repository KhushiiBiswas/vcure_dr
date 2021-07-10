import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({ Key key }) : super(key: key);


  @override
  _DropdownState createState() => _DropdownState();
  
}

class _DropdownState extends State<Dropdown> {
   String avaluechhose = "Item1";

  List<String> listItemtest = ["Item1", "Item2", "Item3", "Item4"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: DropdownButton(
        
        
        hint: Text("Select Items"),
        
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 36,
        isExpanded: true,
        
        style: TextStyle(color: Colors.white, fontSize: 22),
        value: avaluechhose,
        onChanged: (newValue) {
          setState(() {
            avaluechhose = newValue;
          });
        },
        
        items: listItemtest.map((valueItem) {
          return DropdownMenuItem(
            value: valueItem,
            child: Text(valueItem),
          );
        }).toList(),
      ),
    );
  }
}