// import 'package:app/components/background.dart';
// import 'package:app/components/button1.0.dart';
// import 'package:app/pages/sign_in/forgot_password/forgot_pswd.dart';
// import 'package:flutter/material.dart';

// class OtpVerify extends StatelessWidget {
//   //final String redirect;

//   const OtpVerify({
//     Key key,
//     // this.redirect,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Material(
//       color: Colors.transparent,
//       child: Background(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.only(top: size.height / 5.5),
//             child: Column(
//               children: [
//                 Container(
//                   alignment: Alignment.center,
//                   child: Image.asset(
//                     "assets/Logo.png",
//                     height: MediaQuery.of(context).size.height / 3.5,
//                     width: MediaQuery.of(context).size.width,
//                     fit: BoxFit.scaleDown,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: Text(
//                     'Enter the OTP recieved',
//                     style: TextStyle(color: Colors.white, fontSize: 15),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 50, right: 50, top: 15),
//                   child: Container(
//                     child: TextField(
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                       textAlign: TextAlign.center,
//                       cursorColor: Colors.white,
//                       decoration: InputDecoration(
//                           hintText: 'OTP',
//                           hintStyle: TextStyle(color: Colors.white),
//                           enabledBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.white))),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 30),
//                   child: Button(
//                     text: 'Verify',
//                     press: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => ForgotPassword()));
//                     },
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
