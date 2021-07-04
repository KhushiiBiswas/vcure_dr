import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/toggle_switch.dart';

class Slots extends StatelessWidget {
  const Slots({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> time = [
      "Morning",
      "Afternoon",
      "Evening",
    ];

    List<String> timeMorning = [
      "10:00 AM-10:30 AM",
      "10:30 AM-11:00 AM",
      "11:00 AM-11:30 AM",
      "11:30 AM-12:00 PM",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Text(
          "Slots",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: ListView.builder(
            itemCount: time.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Text(
                    time[index],
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, bottom: 50, left: 20),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: timeMorning.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Row(
                              children: [Text(timeMorning[index]), Home()],
                            ),
                          );
                        }),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
