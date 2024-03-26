// import 'package:flutter/material.dart';
// import 'package:talk_tryst/constants/constants.dart';
// import 'package:talk_tryst/view/screens/widget/abhi/cstm_button_phone.dart';
// import 'package:talk_tryst/view/screens/widget/abhi/cstm_textfield.dart';
// import 'package:talk_tryst/view/widget/bottom_bar.dart';

// class SetProfile extends StatefulWidget {
//   final String? name;
//   final String? bio;
//   const SetProfile({super.key, required this.bio, required this.name});

//   @override
//   State<SetProfile> createState() => _SetProfileState();
// }

// class _SetProfileState extends State<SetProfile> {
//   final TextEditingController namecontroller = TextEditingController();
//   final TextEditingController biocontroller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//       ),
//       backgroundColor: BGColors.BackGroundColor,
//       body: Column(
//         children: [
//           SizedBox(
//             height: size.height * 0.1,
//           ),
//           Align(
//             alignment: Alignment.topLeft,
//             child: Padding(
//               padding: EdgeInsets.only(left: size.width * 0.05),
//               child: Text(
//                 "Create \n Account",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: size.width * 0.10,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: size.height * 0.04,
//           ),
//           Align(
//             alignment: Alignment.topLeft,
//             child: Padding(
//               padding: EdgeInsets.only(left: size.width * 0.05),
//               child: CircleAvatar(
//                 radius: size.width * 0.09,
//                 backgroundColor: Colors.blueAccent,
//                 backgroundImage: const AssetImage('assets/image.png'),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: size.height * 0.03,
//           ),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
//             child: CustomTextField(
//                 icons: Icons.person,
//                 hintText: "Enter Your Username",
//                 controller: namecontroller),
//           ),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
//             child: CustomTextField(
//                 icons: Icons.mail,
//                 hintText: "Set Bio",
//                 controller: biocontroller),
//           ),
//           SizedBox(
//             height: size.height * 0.02,
//           ),
//           // SizedBox(
//           //   height: size.height * 0.05,
//           // ),
//           CustomButtonPhone(
//               size: size,
//               buttonname: "Start",
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) => BottomBar(),
//                 ));
//               }),
//         ],
//       ),
//     );
//   }
// }
