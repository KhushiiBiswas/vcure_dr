import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<String> _locations = ['Bhilai', 'Bilaspur', 'Durg', 'Raipur'];
  String _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.grey.shade800),
      hint: Text(
        'City',
        style: TextStyle(color: Colors.grey.shade800),
      ),
      value: _selectedLocation,
      onChanged: (newValue) {
        setState(() {
          _selectedLocation = newValue;
        });
      },
      items: _locations.map((location) {
        return DropdownMenuItem(
          child: new Text(location),
          value: location,
        );
      }).toList(),
    );
  }
}
