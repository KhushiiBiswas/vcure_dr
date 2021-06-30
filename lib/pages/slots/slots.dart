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
                  const TextField(
                   obscureText: true,
                    decoration: InputDecoration(
                     border: OutlineInputBorder(),
                      
                      labelStyle: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),
                      labelText: '                Scheduling   ',
                    ),
                  ),
               //Text("  Scheduling ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.grey),overflow: TextOverflow.ellipsis,Dec),
               Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: Column(
                   
                   children: [
                     const TextField(
                      
                       obscureText: true,
                       decoration: InputDecoration(
                       border: OutlineInputBorder(),
                      
                      labelStyle: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold,),
                      labelText: '                        Morning   ',
                    ),
                  ),
                     Row(
                       children:[
                         Padding(
                           padding: const EdgeInsets.only(top: 50), 
                         ),
                         
                          Row(children: [
                           Text("  8 AM - 9 AM      ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                           CustomToggle()
                         ],),
                         Row(children: [
                           Text("       9 AM - 10 AM  ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                           CustomToggle()
                         ],),
                         
                         ]
                     ),
                      Row(
                       children:[
                         
                         Padding(
                           padding: const EdgeInsets.only(top: 20), 
                         ),
                         Row(children: [
                           Text("  10 AM - 11 AM ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                           CustomToggle()
                         ],),
                         Row(children: [
                           Text("     11 AM - 12 AM  ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
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
                     const TextField(
                   obscureText: true,
                    decoration: InputDecoration(
                     border: OutlineInputBorder(),
                      
                      labelStyle: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),
                      labelText: '                     Afternoon   ',
                    ),
                  ),
                     Row(
                       children:[
                         
                         Padding(
                           padding: const EdgeInsets.only(top: 50), 
                         ),
                         Row(children: [
                           Text("  12 PM - 1 PM  ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                           CustomToggle()
                         ],),
                         
                         
                         Row(children: [
                           Text("     1 PM - 2 PM  ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                           CustomToggle()
                         ],),
                         
                         ]
                     ),
                      Row(
                       children:[
                         
                         Padding(
                           padding: const EdgeInsets.only(top: 20), 
                         ),
                         Row(children: [
                           Text("  2 PM - 3 PM    ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                           CustomToggle()
                         ],),
                         
                         
                         Row(children: [
                           Text("     3 PM - 4 PM  ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
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
                     const TextField(
                   obscureText: true,
                    decoration: InputDecoration(
                     border: OutlineInputBorder(),
                      
                      labelStyle: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),
                      labelText: '                      Evening  ',
                    ),
                  ),
                     Row(
                       children:[
                         
                         Padding(
                           padding: const EdgeInsets.only(top: 50), 
                         ),
                         Row(children: [
                           Text("  4 PM - 5 PM  ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                           CustomToggle()
                         ],),
                         
                         
                         Row(children: [
                           Text("     5 PM - 6 PM  ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                           CustomToggle()
                         ],),
                         
                         ]
                     ),
                      Row(
                       children:[
                         
                         Padding(
                           padding: const EdgeInsets.only(top: 20), 
                         ),
                         Row(children: [
                           Text("  6 PM - 7 PM  ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                           CustomToggle()
                         ],),
                         
                         Row(children: [
                           Text("     7 PM - 8 PM  ",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
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