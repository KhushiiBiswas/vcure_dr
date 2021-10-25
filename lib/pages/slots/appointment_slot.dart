import 'package:flutter/material.dart';
import 'package:vcure_doctors/utils/api.dart';

class AppointmentSlot extends StatefulWidget {
  @override
  _AppointmentSlotState createState() => _AppointmentSlotState();
}

class _AppointmentSlotState extends State<AppointmentSlot> {
  String assignedSlot;
  DateTime selectedDate = DateTime.now(); // TO tracking date
  int timeIndex = 0; //For tracking time
  int timeMorningIndex = 0;
  int timeAfternoonIndex = 0;
  int timeEveningIndex = 0;
  int currentDateSelectedIndex = 0; //For Horizontal Date
  int selectedTimeIndex = 0; //For selected time
  ScrollController scrollController = ScrollController();

  List<String> selectedMorning = ["11:00 AM"];
  List<String> selectedAfternoon = ["11:00 AM"];
  List<String> selectedEvening = ["11:00 AM"];

  List<String> timeMorning = [
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
  ];
  List<String> timeAfternoon = [
    "12:00 PM",
    "12:30 PM",
    "01:00 PM",
    "01:30 PM",
    "02:00 PM",
    "02:30 PM",
  ];
  List<String> timeEvening = [
    "05:00 PM",
    "05:30 PM",
    "06:00 PM",
    "06:30 PM",
    "07:00 PM",
    "07:30 PM",
  ];

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Select Appointment Slots",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
//
//To Show Morning time slot
//
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
                height: 30,
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Morning",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey),
                )),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff03c8a8), Color(0xff89d8d3)]),
            ),
            child: Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  spacing: _size.width / 8.5,
                  runSpacing: 15,
                  children: [
                    for (int index = 0; index < timeMorning.length; index++)
                      InkWell(
                        onTap: () {
                          if (selectedMorning.contains(timeMorning[index])) {
                            selectedMorning.remove(timeMorning[index]);
                          } else {
                            selectedMorning.add(timeMorning[index]);
                          }
                          setState(() {
                            timeIndex = 1;
                            timeMorningIndex = index;
                            selectedTimeIndex = index;
                            assignedSlot = timeMorning[index];
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 90,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white),
                              color:
                                  selectedMorning.contains(timeMorning[index])
                                      ? Colors.white
                                      : Colors.transparent),
                          child: Text(
                            timeMorning[index],
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color:
                                    selectedMorning.contains(timeMorning[index])
                                        ? Color(0xff03c8a8)
                                        : Colors.white),
                          ),
                        ),
                      )
                  ],
                )),
          ),
//
// To Show Afternoon time slots
//
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
                height: 30,
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Afternoon",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey),
                )),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff03c8a8), Color(0xff89d8d3)]),
            ),
            child: Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child:
                    Wrap(spacing: _size.width / 8.5, runSpacing: 15, children: [
                  for (int index = 0; index < timeAfternoon.length; index++)
                    InkWell(
                      onTap: () {
                        if (selectedAfternoon.contains(timeAfternoon[index])) {
                          selectedAfternoon.remove(timeAfternoon[index]);
                        } else {
                          selectedAfternoon.add(timeAfternoon[index]);
                        }
                        setState(() {
                          timeIndex = 1;
                          timeAfternoonIndex = index;
                          selectedTimeIndex = index;
                          assignedSlot = timeAfternoon[index];
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 90,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white),
                            color:
                                selectedAfternoon.contains(timeAfternoon[index])
                                    ? Colors.white
                                    : Colors.transparent),
                        child: Text(
                          timeAfternoon[index],
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: selectedAfternoon
                                      .contains(timeAfternoon[index])
                                  ? Color(0xff03c8a8)
                                  : Colors.white),
                        ),
                      ),
                    )
                ])),
          ),
//
// To show Evening time slot
//
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
                height: 30,
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Evening",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey),
                )),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff03c8a8), Color(0xff89d8d3)]),
            ),
            child: Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child:
                    Wrap(spacing: _size.width / 8.5, runSpacing: 15, children: [
                  for (int index = 0; index < timeEvening.length; index++)
                    InkWell(
                      onTap: () {
                        if (selectedEvening.contains(timeEvening[index])) {
                          selectedEvening.remove(timeEvening[index]);
                        } else {
                          selectedEvening.add(timeEvening[index]);
                        }
                        setState(() {
                          timeIndex = 1;
                          timeEveningIndex = index;
                          selectedTimeIndex = index;
                          assignedSlot = timeEvening[index];
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 90,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white),
                            color: selectedEvening.contains(timeEvening[index])
                                ? Colors.white
                                : Colors.transparent),
                        child: Text(
                          timeEvening[index],
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color:
                                  selectedEvening.contains(timeEvening[index])
                                      ? Color(0xff03c8a8)
                                      : Colors.white),
                        ),
                      ),
                    )
                ])),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "  Save  ",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                  backgroundColor: MaterialStateProperty.all(Color(0xff03c8a8)),
                ),
                onPressed: () {
                  api.exportApi('api/settimeslots', {
                    'morning': selectedMorning,
                    'afternoon': selectedAfternoon,
                    'evening': selectedEvening,
                  });
                },
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
