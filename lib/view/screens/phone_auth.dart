import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/controller/auth_controller.dart';
import 'package:talk_tryst/view/home/home_screen.dart';
import 'package:talk_tryst/view/screens/widget/abhi/cstm_button_phone.dart';
import 'package:talk_tryst/view/screens/widget/abhi/cstm_textfield.dart';
import 'package:talk_tryst/view/screens/widget/abhi/custom_phone_field.dart';
import 'package:talk_tryst/view/signup/create_account.dart';
import 'package:talk_tryst/view/widget/bottom_bar.dart';

class PhoneAuthPage extends StatelessWidget {
  PhoneAuthPage({super.key});

  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pro = Provider.of<AuthenticationProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: BGColors.BackGroundColor,
      // appBar: AppBar(),
      // resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        // reverse: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Center(child: Image.asset("assets/speech-bubble (2).png")),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Text(
                "Good to see you back!",
                style:
                    TextStyle(fontSize: size.width * 0.04, color: Colors.white),
              ),
            ),
            // SizedBox(
            //   height: size.height * 0.05,
            // ),
            // const SafeArea(
            //   child: Icon(
            //     Icons.arrow_back,
            //     color: Colors.white,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //     left: 30,
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'Hey',
            //         style: TextStyle(
            //           fontSize: 40,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       Text(
            //         'Enter your phone',
            //         style: TextStyle(
            //           fontSize: 40,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       Text("to send otp!",
            //           style: TextStyle(
            //             fontSize: 40,
            //             fontWeight: FontWeight.bold,
            //           )),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
                padding: const EdgeInsets.all(30),
                child: CustomPhoneField(phonecontroller: phonecontroller)),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
              child: CustomTextField(
                  icons: Icons.person,
                  hintText: "Enter Your Username",
                  controller: namecontroller),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
              child: CustomTextField(
                  icons: Icons.mail,
                  hintText: "Set Bio",
                  controller: emailcontroller),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButtonPhone(
              onPressed: () {
                String countrycode = "+91";
                String phonenumber = countrycode + phonecontroller.text;
                if (phonenumber.length == 13) {
                  pro.signinWithPhone(
                    name: namecontroller.text,
                    email: emailcontroller.text,
                    phoneNumber: phonenumber,
                    context: context,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please enter a 10-digit phone number.'),
                    ),
                  );
                }
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => BottomBar()));
              },
              size: size,
              buttonname: "Send code",
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
