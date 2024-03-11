import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/login/loginScreen.dart';
import 'package:talk_tryst/view/widget/main_buttons.dart';

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
        padding: EdgeInsets.only(left: size.width * 0.2),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: size.height * 0.2,
            ),
            Image.asset("assets/appimage.png"),
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
                    MaterialPageRoute(builder: (context) => LogInScreen()));
              },
              child: Text("Start"),
              style: ElevatedButton.styleFrom(
                primary: BGColors.BGBTColor,
                onPrimary: Colors.white,
                minimumSize: Size(size.width * 0.6, size.height * 0.07),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
