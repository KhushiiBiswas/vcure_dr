import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      color: Colors.blueGrey,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    "name",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Phone: +91-9100000000",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Email: abc@gmail.com",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "EDIT",
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "CANCLE",
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      )),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "10:00AM",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
