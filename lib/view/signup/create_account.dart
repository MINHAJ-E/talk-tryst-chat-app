import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/home_screen.dart';
import 'package:talk_tryst/view/widget/bottom_bar.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: BGColors.BackGroundColor,
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Text(
                "Create \n Account",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.10,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: CircleAvatar(
                radius: size.width * 0.09,
                backgroundColor: Colors.blueAccent,
                backgroundImage: AssetImage('assets/image.png'),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.01),
            child: Container(
              width: size.width * 0.95,
              child: TextFormField(
                textAlign: TextAlign.start,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'username',
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
            height: size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.01),
            child: Container(
              width: size.width * 0.95,
              child: TextFormField(
                textAlign: TextAlign.start,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'phone number',
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
            height: size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.01),
            child: Container(
              width: size.width * 0.95,
              child: TextFormField(
                textAlign: TextAlign.start,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'otp',
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
            padding: EdgeInsets.only(left: size.width * 0.01),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => BottomBar()));
              },
              child: Text("Done"),
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
