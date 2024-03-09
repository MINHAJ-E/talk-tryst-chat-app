import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/home_screen.dart';
import 'package:talk_tryst/view/signup/create_account.dart';
import 'package:talk_tryst/view/widget/bottom_bar.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({super.key});

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGColors.BackGroundColor,
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align children to the start
        children: [
          const SizedBox(
            height: 200,
          ),
          Center(child: Image.asset("assets/appimage.png")),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "Verify OTP",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              width: 380,
              child: TextFormField(
                textAlign: TextAlign.start, // Align the text input to the start
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'verify otp',
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                onChanged: (value) {},
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const BottomBar()));
              },
              child: Text("Start"),
              style: ElevatedButton.styleFrom(
                primary: BGColors.BGBTColor,
                onPrimary: Colors.white,
                minimumSize: Size(370, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
