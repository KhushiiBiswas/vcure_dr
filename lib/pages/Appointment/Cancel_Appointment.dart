import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/button.dart';
import 'package:vcure_doctors/components/Cancel_Dropdown.dart';

class Cancel extends StatefulWidget {
  const Cancel({Key key}) : super(key: key);

  @override
  _CancelState createState() => _CancelState();
}

class _CancelState extends State<Cancel> {
  // ignore: non_constant_identifier_names

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cancel"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
        child: Container(
          height: size.height / 2.1,
          width: size.width,
          decoration: BoxDecoration(color: Colors.blueGrey.shade300),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Dropdown(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                      labelText: "Reason",
                      labelStyle: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Button(
                    text: "Cancel",
                    press: () {},
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
