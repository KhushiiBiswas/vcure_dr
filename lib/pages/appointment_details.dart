import 'package:flutter/material.dart';

class AppointmentDetails extends StatelessWidget {
  const AppointmentDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Text(
          "Appointment Details",
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
      body: Column(
        children: [
          Card(
            elevation: 2,
            child: Container(
              height: size.height / 4,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mickey Mouse",
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
                          "Appointment Id : 1234\n\nGender : Male\n\nAge : 23\n\nMobile Number : 1234567890\n\nAppointment for : Fever, cough and cold",
                          style:
                              TextStyle(fontSize: 14, color: Colors.blueGrey),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
