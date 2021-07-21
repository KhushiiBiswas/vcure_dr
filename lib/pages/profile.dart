import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Text(
          "Profile",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            image: new ExactAssetImage('assets/dr.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Card(
                    elevation: 2,
                    child: Container(
                      //width: size.width / 1.1,
                      height: size.height / 12,

                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: size.height / 80,
                            horizontal: size.width / 90),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Color(0xff03c8a8),
                              size: size.height / 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Dr. Mayuraj Dewangan",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Card(
                    elevation: 2,
                    child: Container(
                      //width: size.width / 1.1,
                      height: size.height / 12,

                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: size.height / 80,
                            horizontal: size.width / 90),
                        child: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Color(0xff03c8a8),
                              size: size.height / 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "9103333333",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Card(
                    elevation: 2,
                    child: Container(
                      //width: size.width / 1.1,
                      height: size.height / 12,

                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: size.height / 80,
                            horizontal: size.width / 90),
                        child: Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: Color(0xff03c8a8),
                              size: size.height / 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "abc@gmail.com",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                child: Text(
                  "Clinic details",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade300),
                ),
              ),
              Card(
                  elevation: 2,
                  child: Container(
                    //width: size.width / 1.1,
                    height: size.height / 12,

                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height / 80,
                          horizontal: size.width / 90),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pahuja Hospital",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "DNK Colony, Kanera Road, Bilaspur",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.blueGrey),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                child: Text(
                  "Experience & Fees",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade300),
                ),
              ),
              Card(
                  elevation: 2,
                  child: Container(
                    //width: size.width / 1.1,
                    height: size.height / 12,

                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height / 80,
                          horizontal: size.width / 90),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_box,
                            color: Color(0xff03c8a8),
                            size: size.height / 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "10 years",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Card(
                  elevation: 2,
                  child: Container(
                    //width: size.width / 1.1,
                    height: size.height / 12,

                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height / 80,
                          horizontal: size.width / 90),
                      child: Row(
                        children: [
                          Icon(
                            Icons.money,
                            color: Color(0xff03c8a8),
                            size: size.height / 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "600 Rs",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                child: Text(
                  "Specification & Specialisation",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade300),
                ),
              ),
              Card(
                  elevation: 2,
                  child: Container(
                    //width: size.width / 1.1,
                    height: size.height / 12,

                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height / 80,
                          horizontal: size.width / 90),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              "MBBS, MD",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Card(
                  elevation: 2,
                  child: Container(
                    //width: size.width / 1.1,
                    height: size.height / 12,

                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height / 80,
                          horizontal: size.width / 90),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              "Cunsultant Physician and Covid Consultant",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                child: Text(
                  "Languages",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade300),
                ),
              ),
              Card(
                  elevation: 2,
                  child: Container(
                    //width: size.width / 1.1,
                    height: size.height / 12,

                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height / 80,
                          horizontal: size.width / 90),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              "Hindi | English | Bengali ",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
