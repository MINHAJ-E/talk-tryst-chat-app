// // ignore_for_file: must_be_immutable, file_names

// import 'package:flutter/material.dart';
// import 'package:talk_tryst/constants/constants.dart';
// import 'package:talk_tryst/view/login/veryfy_otp.dart';
// import 'package:talk_tryst/view/screens/otp_screen.dart';
// import 'package:talk_tryst/view/signup/create_account.dart';

// class LogInScreen extends StatelessWidget {
//   LogInScreen({super.key});

//   TextEditingController loginController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: BGColors.BackGroundColor,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: size.height * 0.2,
//           ),
//           Center(child: Image.asset("assets/speech-bubble (2).png")),
//           SizedBox(
//             height: size.height * 0.02,
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: size.width * 0.05),
//             child: Text(
//               "Login",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: size.width * 0.15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: size.width * 0.05),
//             child: Text(
//               "Good to see you back!",
//               style:
//                   TextStyle(fontSize: size.width * 0.04, color: Colors.white),
//             ),
//           ),
//           SizedBox(
//             height: size.height * 0.05,
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: size.width * 0.03),
//             child: SizedBox(
//               width: size.width * 0.95,
//               child: TextFormField(
//                 textAlign: TextAlign.start,
//                 style: const TextStyle(color: Colors.black),
//                 decoration: InputDecoration(
//                   hintText: 'phone number',
//                   contentPadding: EdgeInsets.all(size.width * 0.05),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(size.width * 0.12),
//                     borderSide: const BorderSide(color: Colors.transparent),
//                   ),
//                   filled: true,
//                   fillColor: Colors.white,
//                 ),
//                 onChanged: (value) {},
//               ),
//             ),
//           ),
//           SizedBox(
//             height: size.height * 0.07,
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: size.width * 0.05),
//             child: ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => OtpScreen(
//                           verificationid: '',
//                         )));
//               },
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: BGColors.BGBTColor,
//                 minimumSize: Size(size.width * 0.9, size.height * 0.08),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(size.width * 0.03),
//                 ),
//               ),
//               child: const Text("Next"),
//             ),
//           ),
//           SizedBox(
//             height: size.height * 0.02,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Not a member?',
//                 style: TextStyle(
//                   color: Colors.grey[700],
//                 ),
//               ),
//               SizedBox(
//                 width: size.width * 0.02,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   //   Navigator.of(context).push(
//                   //       MaterialPageRoute(builder: (context) => const SignUp()));
//                 },
//                 child: const Text(
//                   'Register Now',
//                   style: TextStyle(
//                       color: Colors.blue, fontWeight: FontWeight.bold),
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
