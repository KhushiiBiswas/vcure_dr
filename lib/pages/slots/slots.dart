 import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/appointment_toogle.dart';
 import 'package:vcure_doctors/components/button1.0.dart';
import 'package:vcure_doctors/components/location_drpdown.dart';
 import 'package:vcure_doctors/pages/demo.dart';

 class Slots extends StatefulWidget {
   const Slots({Key key}) : super(key: key);

   @override
   _SlotsState createState() => _SlotsState();
 }

 class _SlotsState extends State<Slots> {
   @override
   Widget build(BuildContext context) {
     return Material(
            child: SingleChildScrollView(
         
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
              children: [
               
               Text("  Doctors Panel ",style: TextStyle(fontSize: 18),),
               Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: Column(
                   
                   children: [
                     Text("  Morning  "),
                     Row(
                       children:[
                         Row(children: [
                           Text("8 AM - 9 AM"),
                           CustomToggle()
                         ],),
                         Row(children: [
                           Text("9 AM - 10 AM"),
                           CustomToggle()
                         ],),
                         
                         ]
                     ),
                      Row(
                       children:[
                         Row(children: [
                           Text("10 AM - 11 AM"),
                           CustomToggle()
                         ],),
                         Row(children: [
                           Text("11 AM - 12 AM"),
                           CustomToggle()
                         ],),
                         
                         ]
                     )
                     
                   ],

                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: Column(
                   
                   children: [
                     Text("  Afternoon  "),
                     Row(
                       children:[
                         Row(children: [
                           Text("12 PM - 1 PM"),
                           CustomToggle()
                         ],),
                         Row(children: [
                           Text("1 PM - 2 PM"),
                           CustomToggle()
                         ],),
                         
                         ]
                     ),
                      Row(
                       children:[
                         Row(children: [
                           Text("2 PM - 3 PM"),
                           CustomToggle()
                         ],),
                         Row(children: [
                           Text("3 PM - 4 PM"),
                           CustomToggle()
                         ],),
                         
                         ]
                     )
                     
                   ],

                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: Column(
                   
                   children: [
                     Text("  Evening  "),
                     Row(
                       children:[
                         Row(children: [
                           Text("4 PM - 5 PM"),
                           CustomToggle()
                         ],),
                         Row(children: [
                           Text("5 PM - 6 PM"),
                           CustomToggle()
                         ],),
                         
                         ]
                     ),
                      Row(
                       children:[
                         Row(children: [
                           Text("6 PM - 7 PM"),
                           CustomToggle()
                         ],),
                         Row(children: [
                           Text("7 PM - 8 PM"),
                           CustomToggle()
                         ],),
                         
                         ]
                     )
                     
                   ],

                 ),
               )
           ],
           
           ),
            ),
         ),
     );
     
     }
 }