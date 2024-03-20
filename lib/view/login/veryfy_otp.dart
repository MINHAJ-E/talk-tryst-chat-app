// // ignore_for_file: sort_child_properties_last

// import 'package:flutter/material.dart';
// import 'package:talk_tryst/constants/constants.dart';
// import 'package:talk_tryst/view/widget/bottom_bar.dart';

// class VerifyOtp extends StatelessWidget {
//   const VerifyOtp({super.key});

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
//               "Verify Otp",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: size.width * 0.10,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: size.width * 0.05),
//             child: Text(
//               "",
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
//                   hintText: 'Enter otp',
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
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (context) => BottomBar()));
//               },
//               child: const Text("Next"),
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: BGColors.BGBTColor,
//                 minimumSize: Size(size.width * 0.9, size.height * 0.08),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(size.width * 0.03),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: size.height * 0.02,
//           ),
//         ],
//       ),
//     );
//   }
// }
