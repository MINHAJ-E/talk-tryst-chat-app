import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/home_screen.dart';
import 'package:talk_tryst/view/signup/create_account.dart';
import 'package:talk_tryst/view/widget/bottom_bar.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: BGColors.BackGroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.2,
          ),
          Center(child: Image.asset("assets/appimage.png")),
          SizedBox(
            height: size.height * 0.04,
          ),
          Center(
            child: Text(
              "Verify OTP",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.03),
            child: Container(
              width: size.width * 0.95,
              child: TextFormField(
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'verify otp',
                  contentPadding: EdgeInsets.all(size.width * 0.05),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(size.width * 0.12),
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
            height: size.height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.05),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => BottomBar()));
              },
              child: Text("Start"),
              style: ElevatedButton.styleFrom(
                primary: BGColors.BGBTColor,
                onPrimary: Colors.white,
                minimumSize: Size(size.width * 0.9, size.height * 0.08),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(size.width * 0.03),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
