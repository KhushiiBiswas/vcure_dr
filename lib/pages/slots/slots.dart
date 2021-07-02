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
                mainAxisAlignment: MainAxisAlignment.center,
                 
                children: [
                  /* const TextField(
                   obscureText: true,
                    decoration: InputDecoration(
                     border: OutlineInputBorder(),
                      
                      labelStyle: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),
                      labelText: '               Scheduling   ',
                    ),
                  ), */
               Text("  Scheduling ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.grey),),
               Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: Column(
                   
                   children: [
                     const TextField(
                   obscureText: true,
                    decoration: InputDecoration(
                     border: OutlineInputBorder(),
                      
                      labelStyle: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),
                      labelText: '               Morning   ',
                    ),
                  ),
                     /* Text("  Morning  ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.grey),textAlign: TextAlign.center,),
                     Text("----------------------------------------------------------------------------------------",textAlign: TextAlign.center,), */
                     
                     Container(
                       decoration: BoxDecoration(
                        gradient: LinearGradient(
                         begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                         colors: [Color(0xff03c8a8), Color(0xff89d8d3)]),
                        ),
                       child: Row(
                         children:[
                           Padding(
                             padding: const EdgeInsets.only(top: 50), 
                           ),
                           
                            Row(children: [
                             Text("08 AM - 09 AM     ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                             CustomToggle()
                           ],),
                           Row(children: [
                             Text("09 AM - 10 AM     ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                             CustomToggle()
                           ],),
                           
                           ]
                       ),
                     ),
                      Container(
                        decoration: BoxDecoration(
                        gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff03c8a8), Color(0xff89d8d3)]),
                      ),
                        child: Row(
                         children:[
                           
                           Padding(
                             padding: const EdgeInsets.only(top: 20), 
                           ),
                           Row(children: [
                             Text("10 AM - 11 AM     ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                             CustomToggle()
                           ],),
                           Row(children: [
                             Text("11 AM - 12 AM     ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                             CustomToggle()
                           ],),
                           
                           ]
                     ),
                      )
                     
                   ],

                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: Column(
                   
                   children: [
                     const TextField(
                   obscureText: true,
                    decoration: InputDecoration(
                     border: OutlineInputBorder(),
                      
                      labelStyle: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),
                      labelText: '                     Afternoon   ',
                    ),
                  ),
                     Container(
                       
                        decoration: BoxDecoration(
                        gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff03c8a8), Color(0xff89d8d3)]),
                      ),
                       child: Row(
                         children:[
                           
                           Padding(
                             padding: const EdgeInsets.only(top: 50), 
                           ),
                           Row(children: [
                             Text("12 PM - 01 PM     ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                             CustomToggle()
                           ],),
                           
                           
                           Row(children: [
                             Text("01 PM - 02 PM     ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                             CustomToggle()
                           ],),
                           
                           ]
                       ),
                     ),
                      Container(
               
                        decoration: BoxDecoration(
                        gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff03c8a8), Color(0xff89d8d3)]),
                      ),
                        
                        child: Row(
                         children:[
                           
                           Padding(
                             padding: const EdgeInsets.only(top: 20), 
                           ),
                           Row(children: [
                             Text("02 PM - 03 PM     ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,),),
                             CustomToggle()
                           ],),
                           
                           
                           Row(children: [
                             Text("03 PM - 04 PM     ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                             CustomToggle()
                           ],),
                           
                           ]
                     ),
                      )
                     
                   ],

                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: Column(
                   
                   children: [
                     const TextField(
                   obscureText: true,
                    decoration: InputDecoration(
                     border: OutlineInputBorder(),
                      
                      labelStyle: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),
                      labelText: '                      Evening  ',
                    ),
                  ),
                     Container(
                       
                        decoration: BoxDecoration(
                        gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff03c8a8), Color(0xff89d8d3)]),
                      ),
                       child: Row(
                         children:[
                           
                           Padding(
                             padding: const EdgeInsets.only(top: 50), 
                           ),
                           Row(children: [
                             Text("04 PM - 05 PM     ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                             CustomToggle()
                           ],),
                           
                           
                           Row(children: [
                             Text("05 PM - 06 PM     ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                             CustomToggle()
                           ],),
                           
                           ]
                       ),
                     ),
                      Container(
                       
                        decoration: BoxDecoration(
                        gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff03c8a8), Color(0xff89d8d3)]),
                      ),
                        child: Row(
                         children:[
                           
                           Padding(
                             padding: const EdgeInsets.only(top: 20), 
                           ),
                           Row(children: [
                             Text("06 PM - 07 PM     ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                             CustomToggle()
                           ],),
                           
                           Row(children: [
                             Text("07 PM - 08 PM     ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                             CustomToggle()
                           ],),
                           
                           ]
                     ),
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