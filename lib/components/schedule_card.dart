import 'package:flutter/material.dart';
import 'package:vcure_doctors/pages/appointment_details.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jerry",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Appointment for : Fever",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Phone: 910000000",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            GestureDetector(
              child: CircleAvatar(
                  backgroundColor: Colors.teal.shade300,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )),
              onTap: () {
                Navigator.of(context, rootNavigator: true)
                    .push(MaterialPageRoute(
                        builder: (
                  context,
                ) =>
                            AppointmentDetails()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
