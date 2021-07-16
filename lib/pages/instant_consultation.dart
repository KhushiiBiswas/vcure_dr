import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/custom_toggle.dart';
import 'package:vcure_doctors/components/schedule_card.dart';
import 'package:vcure_doctors/pages/schedule/schedule.dart';

class InstantConsultation extends StatefulWidget {
  const InstantConsultation({Key key}) : super(key: key);

  @override
  _InstantConsultationState createState() => _InstantConsultationState();
}

class _InstantConsultationState extends State<InstantConsultation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Text(
          "Instant Consultation",
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                            CustomToggle()
                          ],
                        ),
                        Text(
                          "Turn on to show availability",
                          style:
                              TextStyle(fontSize: 14, color: Colors.blueGrey),
                        )
                      ],
                    ),
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    "Appoinments",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade300),
                  ),
                ),
                ScheduleCard()
              ],
            )
          ],
        ),
      ),
    );
  }
}
