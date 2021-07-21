import 'package:flutter/material.dart';

class AppointmentHistory extends StatelessWidget {
  const AppointmentHistory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          title: Text(
            "Appointment History",
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
        body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: 6, //list.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: AppointmentCard(
                  previousApoointment: true,
                ));
          },
        ));
  }
}

class AppointmentCard extends StatelessWidget {
  final bool previousApoointment;
  const AppointmentCard({Key key, this.previousApoointment = false})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mickey Mouse",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.right,
            ),
            Text(
              "Appoinment ID : 1234",
              style: TextStyle(color: Colors.blueGrey),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("15 July 2020 | "),
                    Visibility(
                      visible: (previousApoointment == false),
                      child: Icon(
                        Icons.watch_later_outlined,
                        color: Colors.teal.shade300,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "10:00AM",
                    ),
                    Visibility(
                        visible: (previousApoointment == true),
                        child: Text(" | Cancled")),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width / 7),
                  child: GestureDetector(
                    onTap: () {
                      previousApoointment == true
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AppointmentDetails()))
                          : Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AppointmentDetails()));
                    },
                    child: CircleAvatar(
                        backgroundColor: Colors.teal.shade300,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

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
