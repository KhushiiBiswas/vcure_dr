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
  int timeEveningImdex = 0;
  int currentDateSelectedIndex = 0; //For Horizontal Date
  int selectedTimeIndex = 0; //For time
  ScrollController scrollController = ScrollController();

  List<String> selectedMorning = [];
  List<String> selectedAfternoon = ["11:00 AM", "11:30 AM"];
  List<String> selectedEvening = ["11:00 AM", "11:30 AM"];

  List<String> timeMorning = [
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
  ];
  List<String> timeAfternoon = [
    "01:00 PM",
    "01:30 PM",
    "02:00 PM",
    "02:30 M",
  ];
  List<String> timeEvening = [
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
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
          //To Show Current Date

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
            height: 100,
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Wrap(
                        spacing: _size.width / 8.5,
                        runSpacing: 10,
                        children: [
                          for (int index = 0;
                              index < timeMorning.length;
                              index++)
                            InkWell(
                              onTap: () {
                                if (selectedMorning
                                    .contains(timeMorning[index])) {
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
                                height: 20,
                                width: 90,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.white),
                                    color: selectedMorning
                                            .contains(timeMorning[index])
                                        ? Colors.white
                                        : Colors.transparent),
                                child: Text(
                                  timeMorning[index],
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: selectedMorning
                                              .contains(timeMorning[index])
                                          ? Colors.black
                                          : Colors.white),
                                ),
                              ),
                            )
                        ],
                      ))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
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
            height: 100,
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(width: 20);
                        },
                        itemCount: timeAfternoon.length,
                        controller: scrollController,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                timeIndex = 2;
                                timeAfternoonIndex = index;
                                selectedTimeIndex = index;
                                assignedSlot = timeAfternoon[index];
                              });
                            },
                            child: Container(
                              height: 20,
                              width: 90,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white),
                                  color: timeAfternoonIndex == index &&
                                          timeIndex == 2
                                      ? Colors.white
                                      : Colors.transparent),
                              child: Text(
                                timeAfternoon[index],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: timeAfternoonIndex == index &&
                                            timeIndex == 2
                                        ? Colors.black
                                        : Colors.white),
                              ),
                            ),
                          );
                        },
                      ))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
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
            height: 100,
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(width: 20);
                        },
                        itemCount: timeEvening.length,
                        controller: scrollController,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                timeIndex = 3;
                                timeEveningImdex = index;
                                selectedTimeIndex = index;
                                assignedSlot = timeEvening[index];
                              });
                            },
                            child: Container(
                              height: 20,
                              width: 90,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white),
                                  color: timeEveningImdex == index &&
                                          timeIndex == 3
                                      ? Colors.white
                                      : Colors.transparent),
                              child: Text(
                                timeEvening[index],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: timeEveningImdex == index &&
                                            timeIndex == 3
                                        ? Colors.black
                                        : Colors.white),
                              ),
                            ),
                          );
                        },
                      ))),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "  Continue  ",
                style: TextStyle(color: Colors.white, fontSize: 16),
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
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      scrollable: true,
                      title: Text('Appointment for'),
                      content: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Name',
                                  icon: Icon(Icons.account_box),
                                ),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.numberWithOptions(
                                    signed: false),
                                decoration: InputDecoration(
                                  labelText: 'Age',
                                  icon: Icon(Icons.calendar_view_day_rounded),
                                ),
                              ),
                              TextFormField(
                                maxLines: null,
                                decoration: InputDecoration(
                                  labelText: 'Illness',
                                  icon: Icon(Icons.message),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      actions: [
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff03c8a8)),
                            ),
                            child: Text("Submit"),
                            onPressed: () {
                              api.exportApi('api/settimeslots', {
                                'morning': selectedMorning,
                                'afternoon': selectedAfternoon,
                                'evening': selectedEvening,
                              });
                            })
                      ],
                    );
                  });
            },
          ),
        ]),
      ),
    ));
  }
}
