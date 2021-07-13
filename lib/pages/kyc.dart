import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/button.dart';
import 'package:vcure_doctors/components/kyc_button.dart';
import 'package:vcure_doctors/components/hellotext.dart';
import 'package:vcure_doctors/components/location_drpdown.dart';
import 'package:vcure_doctors/pages/slots/slots.dart';

class kycFinal extends StatefulWidget {
  const kycFinal({Key key}) : super(key: key);

  @override
  _kycFinalState createState() => _kycFinalState();
}

class _kycFinalState extends State<kycFinal> {
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
             // child: HelloText(),
            ),
            Center(
              child: Column(
                children: [
                
                  Padding(
                    padding: EdgeInsets.only(top: size.height / 3.3),
                    child: Column(
                      children: [
                        Text("Complete your kyc",style: TextStyle(fontSize: 24,),),
                        SizedBox(
                          height: 50,
                        ),
                        Buttonkyc(
                          text: 'Gmail',
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
                        Buttonkyc(
                          text: 'Whatsapp',
                          press: () {
                            // Navigator.of(context, rootNavigator: true)
                            //     .push(MaterialPageRoute(
                            //         builder: (context) => Categories(
                            //               appointmentType:
                            //                   "In-Clinic Appointment",
                            //             )));
                          },
                          
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Text("Auto generated email of onboarding will be sent to the doctor",style: TextStyle(fontSize: 24),textAlign: TextAlign.center,),
                          
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Text("Support No 6265598871",style: TextStyle(fontSize: 24),textAlign: TextAlign.center,),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Button(text: "Slots",
                          press: (){
                            Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Slots(),
                          ),
                        );
                          },
                          ),
                          
                          )  
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
