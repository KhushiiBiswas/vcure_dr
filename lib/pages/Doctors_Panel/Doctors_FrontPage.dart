import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/appointment_toogle.dart';
import 'package:vcure_doctors/components/button2.0.dart';
import 'package:vcure_doctors/components/hellotext.dart';
import 'package:vcure_doctors/components/location_drpdown.dart';

class DoctorsFront extends StatefulWidget {
  const DoctorsFront({Key key}) : super(key: key);

  @override
  _DoctorsFrontPageState createState() => _DoctorsFrontPageState();
}

class _DoctorsFrontPageState extends State<DoctorsFrontPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Location(),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: HelloText(),
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height / 3.3),
                  child: Column(
                    children: [
                      ButtonIn(
                        text: 'Morning',
                        press: () {
                          // Navigator.of(context, rootNavigator: true)
                          //     .push(MaterialPageRoute(
                          //         builder: (context) => Categories(
                          //               appointmentType: "Instant Consultation",
                          //             )));
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ButtonIn(
                        text: 'Afternoon',
                        press: () {
                          // Navigator.of(context, rootNavigator: true)
                          //     .push(MaterialPageRoute(
                          //         builder: (context) => Categories(
                          //               appointmentType: "Appointment Booking",
                          //             )));
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ButtonIn(
                        text: 'Evening',
                        press: () {
                          // Navigator.of(context, rootNavigator: true)
                          //     .push(MaterialPageRoute(
                          //         builder: (context) => Categories(
                          //               appointmentType:
                          //                   "In-Clinic Appointment",
                          //             )));
                        },
                      ),
                      CustomToggle()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

mixin DoctorsFrontPage {
}