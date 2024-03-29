import 'package:flutter/material.dart';
import 'package:talk_tryst/auth_gateway.dart';
import 'package:talk_tryst/constants/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: BGColors.BackGroundColor,
      // appBar: AppBar(
      //   backgroundColor: Colors.amber,
      // ),
      body: Padding(
        padding: EdgeInsets.only(left: size.width * 0.13),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: size.height * 0.2,
            ),
            Image.asset(
              "assets/speech-bubble (6).png",
              filterQuality: FilterQuality.high,
            ),
            SizedBox(
              height: size.height * 0.13,
            ),
            Text(
              "welcome to",
              style:
                  TextStyle(color: Colors.white, fontSize: size.width * 0.05),
            ),
            Text(
              "Talk Tryst",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.075,
                  color: Colors.white),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    // MaterialPageRoute(builder: (context) => PhoneAuthPage()));
                    MaterialPageRoute(builder: (context) => AuthGate()));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: BGColors.BGBTColor,
                minimumSize: Size(size.width * 0.6, size.height * 0.07),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text("Start"),
            ),
          ],
        ),
      ),
    );
  }
}
