import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/controller/auth_controller.dart';
import 'package:talk_tryst/view/screens/widget/abhi/cstm_button_phone.dart';
import 'package:talk_tryst/view/widget/bottom_bar.dart';

class OtpScreenn extends StatelessWidget {
  OtpScreenn(
      {super.key,
      required this.verificationid,
      this.email,
      this.name,
      this.phoneNumber});

  final String verificationid;
  final String? name;
  final String? email;
  final String? phoneNumber;
  final TextEditingController otpcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      backgroundColor: BGColors.BackGroundColor,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SafeArea(
            //   child: Icon(
            //     Icons.arrow_back,
            //     color: Colors.white,
            //   ),
            // ),
            SizedBox(
              height: size.height * 0.2,
            ),
            Center(child: Image.asset("assets/speech-bubble (2).png")),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Otp",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'verification',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
              child: Column(
                children: [
                  Text(
                    'Enter the verification code we just sent on your',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'phonenumber',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Center(
              child: Pinput(
                controller: otpcontroller,
                length: 6,
                showCursor: true,
                defaultPinTheme: const PinTheme(
                    textStyle: TextStyle(fontSize: 18, color: Colors.black),
                    width: 50,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            CustomButtonPhone(
              onPressed: () {
                verifyOtp(context, otpcontroller.text, phoneNumber!);
              },
              size: size,
              buttonname: "Verify otp",
            ),
          ],
        ),
      ),
    );
  }

  void verifyOtp(context, String userotp, String phonenumber) {
    final authPro = Provider.of<AuthenticationProvider>(context, listen: false);
    authPro.verifyOtp(
        verificationId: verificationid,
        otp: userotp,
        email: email!,
        name: name!,
        phone: phonenumber,
        onSuccess: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomBar(),
              ));
        });
  }
}
