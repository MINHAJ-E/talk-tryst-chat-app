import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/login/loginScreen.dart';
import 'package:talk_tryst/view/widget/main_buttons.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGColors.BackGroundColor,
      // appBar: AppBar(
      //   backgroundColor: Colors.amber,
      // ),
      body: Padding(
        padding: const EdgeInsets.only(left: 60),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.asset("assets/appimage.png"),
            const SizedBox(
              height: 130,
            ),
            const Text(
              "welcome to",
              style: TextStyle(color: Colors.white, fontSize: 27),
            ),
            const Text(
              "Talk Tryst",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 50,
            ),
            // MainButtons(
            //     text: "Start",
            //     navi: () {
            //       Navigator.of(context).push(MaterialPageRoute(
            //           builder: (context) => const LogInScreen()));
            //     }),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LogInScreen()));
              },
              child: Text("Start"),
              style: ElevatedButton.styleFrom(
                primary: BGColors.BGBTColor,
                onPrimary: Colors.white,
                minimumSize: Size(300, 60),
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
