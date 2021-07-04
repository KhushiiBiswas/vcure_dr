import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/gradient_button.dart';
import 'package:vcure_doctors/components/location_drpdown.dart';
import 'package:vcure_doctors/pages/schedule/schedule.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Location(),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height / 3.3),
                  child: Column(
                    children: [
                      GradientButton(
                        text: ' Instant Consultation ',
                        press: () {
                          Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                  builder: (context) => Schedule()));
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      GradientButton(
                        text: ' Online Appointments ',
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
                        text: 'In-Clinic Appointments',
                        press: () {
                          // Navigator.of(context, rootNavigator: true)
                          //     .push(MaterialPageRoute(
                          //         builder: (context) => Categories(
                          //               appointmentType:
                          //                   "In-Clinic Appointment",
                          //             )));
                        },
                      ),
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
