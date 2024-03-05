import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGColors.BackGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Setting",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
              ),
              CircleAvatar(),
              CircleAvatar(),
              CircleAvatar(),
              CircleAvatar(),
              CircleAvatar(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: BGColors.BGBTColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
