import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/Cancel_Dropdown.dart';
import 'package:vcure_doctors/components/MainProfile_Dropdown.dart';
import 'package:vcure_doctors/components/Specialization_Dropdown.dart';

class Detail extends StatefulWidget {
  const Detail({ Key key }) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Cancel"),
      ),
      
      body: 
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:16.0,left: 16,right: 16),
          child: Column(children: [
            
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: TextField(
                  
                maxLines: null,
                decoration: InputDecoration(labelText: "Title",labelStyle: TextStyle(color: Colors.black) ),

            
              ),
              
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: TextField(
                  
                maxLines: null,
                decoration: InputDecoration(labelText: "First Name",labelStyle: TextStyle(color: Colors.black) ),

            
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: TextField(
                  
                maxLines: null,
                decoration: InputDecoration(labelText: "Last Name",labelStyle: TextStyle(color: Colors.black) ),

            
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: TextField(
                  
                maxLines: null,
                decoration: InputDecoration(labelText: "Contact Number",labelStyle: TextStyle(color: Colors.black) ),

            
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: TextField(
                  
                maxLines: null,
                decoration: InputDecoration(labelText: "Alternate Number",labelStyle: TextStyle(color: Colors.black) ),

            
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: TextField(
                  
                maxLines: null,
                decoration: InputDecoration(labelText: "Email",labelStyle: TextStyle(color: Colors.black) ),

            
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: TextField(
                  
                maxLines: null,
                decoration: InputDecoration(labelText: "Gender",labelStyle: TextStyle(color: Colors.black) ),

            
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: TextField(
                  
                maxLines: null,
                decoration: InputDecoration(labelText: "City",labelStyle: TextStyle(color: Colors.black) ),

            
              ),
              
            ),
            Padding(
              padding:EdgeInsets.all(8.0),
              child: MainD(),
               ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Specialization(),
            )
          ]
          
          )
        ),
      )
    );
  }
}