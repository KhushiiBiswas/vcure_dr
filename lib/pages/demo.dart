import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  List<bool> isSelected;
  int n = 0;
  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width / 30, vertical: size.height / 40),
      child: Column(
        children: [
          Card(
            child: ToggleButtons(
              borderColor: Colors.teal.shade300,
              borderWidth: 1,
              fillColor: Colors.teal.shade300,
              selectedBorderColor: Colors.teal.shade300,
              selectedColor: Colors.white,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(size.width / 35),
                  child: Text(
                    ' Appointment Booking ',
                    style: TextStyle(
                        fontSize: size.width / 27, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(size.width / 35),
                  child: Text(
                    'Instant Consultation',
                    style: TextStyle(
                        fontSize: size.width / 27, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
              onPressed: (int index) {
                setState(() {
                  for (int i = 0; i < isSelected.length; i++) {
                    isSelected[i] = i == index;
                  }
                  n = index;
                });
              },
              isSelected: isSelected,
            ),
          ),
        ],
      ),
    );
  }
}
