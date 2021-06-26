import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/button2.0.dart';
import 'package:vcure_doctors/components/hellotext.dart';
import 'package:vcure_doctors/components/location_drpdown.dart';

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
                        text: 'Instant Consultation',
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
                        text: 'Online Appointments',
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
