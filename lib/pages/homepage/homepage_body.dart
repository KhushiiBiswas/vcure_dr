import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/schedule_card.dart';

class HomepageBody extends StatefulWidget {
  const HomepageBody({Key key}) : super(key: key);

  @override
  _HomepageBodyState createState() => _HomepageBodyState();
}

class _HomepageBodyState extends State<HomepageBody> {
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
      child: Stack(
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
          Padding(
            padding: EdgeInsets.only(top: size.height / 14),
            child: Container(
              child: n == 1 ? InstantConsultation() : AppointmentBooking(),
            ),
          )
        ],
      ),
    );
  }
}

class InstantConsultation extends StatefulWidget {
  const InstantConsultation({Key key}) : super(key: key);

  @override
  _InstantConsultationState createState() => _InstantConsultationState();
}

class _InstantConsultationState extends State<InstantConsultation> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Card(
            elevation: 2,
            child: Container(
              //width: size.width / 1.1,
              height: size.height / 12,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Instant Consultation",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 30,
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            activeTrackColor: Color(0xff03c8a8),
                            activeColor: Color(0xff89d8d3),
                          ),
                        )
                      ],
                    ),
                    Text(
                      "Turn on to show availability",
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    )
                  ],
                ),
              ),
            )),
        Padding(
          padding: EdgeInsets.only(
            top: size.height / 10,
            left: 10,
          ),
          child: Text(
            "Appoinments",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey.shade300),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height / 7),
          child: Container(
            child: ListView.builder(
              itemCount: 6, // list.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ScheduleCard());
              },
            ),
          ),
        ),
      ],
    );
  }
}

class AppointmentBooking extends StatelessWidget {
  const AppointmentBooking({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 10,
          ),
          child: Text(
            "Appoinments",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey.shade300),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40),
          child: Container(
            child: ListView.builder(
              itemCount: 6, // list.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ScheduleCard());
              },
            ),
          ),
        ),
      ],
    );
  }
}
