import 'package:flutter/material.dart';

import 'package:vcure_doctors/components/gradient_button.dart';
import 'package:vcure_doctors/components/hellotext.dart';
import 'package:vcure_doctors/components/location_drpdown.dart';

class DoctorsFront extends StatefulWidget {
  const DoctorsFront({Key key}) : super(key: key);

  @override
  _DoctorsFrontState createState() => _DoctorsFrontState();
}

class _DoctorsFrontState extends State<DoctorsFront> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: SingleChildScrollView(
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
                        GradientButton(
                          text: '  Morning  ',
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
                        GradientButton(
                          text: ' Afternoon ',
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
                        GradientButton(
                          text: '  Evening  ',
                          press: () {
                            // Navigator.of(context, rootNavigator: true)
                            //     .push(MaterialPageRoute(
                            //         builder: (context) => Categories(
                            //               appointmentType:
                            //                   "In-Clinic Appointment",
                            //             )));
                          },
                        ),
                        // CustomToggle()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

mixin DoctorsFrontPage {}
