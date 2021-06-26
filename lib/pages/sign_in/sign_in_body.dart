import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/button1.0.dart';
import 'package:vcure_doctors/components/number_textfield.dart';
import 'package:vcure_doctors/components/password.dart';
import 'package:vcure_doctors/pages/homepage/homepage.dart';
import 'package:vcure_doctors/pages/homepage/hp.dart';

class SignInBody extends StatelessWidget {
  SignInBody({
    Key key,
  }) : super(key: key);
  final TextEditingController phonecontroller = TextEditingController(text: '');
  final TextEditingController passcontroller = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var white = Colors.white;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Material(
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: size.height / 6.5),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/Logo.png",
                      height: MediaQuery.of(context).size.height / 3.5,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  NumberTextField(),
                  Password(
                    labeltext: "Password",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: white),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Button(
                      text: 'Sign In',
                      press: () {
                        // user.signinCred(
                        //   phonecontroller.text,
                        //   passcontroller.text,
                        // );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
