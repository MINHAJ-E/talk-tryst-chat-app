import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/login/veryfy_otp.dart';
import 'package:talk_tryst/view/signup/create_account.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController loginController = TextEditingController();
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
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Good to see you back!",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              width: 380,
              child: TextFormField(
                textAlign: TextAlign.start, // Align the text input to the start
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'phone number',
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                onChanged: (value) {},
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const VerifyOtp()));
              },
              child: const Text("Start"),
              style: ElevatedButton.styleFrom(
                primary: BGColors.BGBTColor,
                onPrimary: Colors.white,
                minimumSize: const Size(370, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a member?',
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: const Text(
                  'Register Now',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
