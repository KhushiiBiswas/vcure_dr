import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/background.dart';
import 'package:vcure_doctors/pages/sign_in/sign_in_body.dart';

class Cancel extends StatefulWidget {
  const Cancel({Key key}) : super(key: key);

  @override
  _CancelState createState() => _CancelState();
}

class _CancelState extends State<Cancel> {
  // ignore: non_constant_identifier_names
  String avaluechhose = "Item1";

  List<String> listItemtest = ["Item1", "Item2", "Item3", "Item4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gagan"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(15)),
              child: DropdownButton(
                hint: Text("Select Items"),
                dropdownColor: Colors.white,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36,
                isExpanded: true,
                underline: SizedBox(),
                style: TextStyle(color: Colors.black, fontSize: 22),
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
            ),
          ),
        ),
      ),
      
    );
  }
}
