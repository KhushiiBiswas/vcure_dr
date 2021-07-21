import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:vcure_doctors/pages/appointment_history.dart';

class NavDrawer extends StatelessWidget {
  final String name;
  const NavDrawer({
    Key key,
    this.name,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: size.height / 6.5,
            child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.person,
                            color: Colors.teal,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            "Dr. Gagandeep Singh",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.height / 40),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xff03c8a8),
                )),
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Appointment History'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AppointmentHistory()))
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Rate us'),
            onTap: () => {StoreRedirect.redirect()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
