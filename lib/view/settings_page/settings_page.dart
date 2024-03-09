import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/widget/settings_page_tile.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGColors.BackGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Settings",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          settingsPageTile("Privacy policy", "message",
              "privacy-policy (1).png", 10, context),
          settingsPageTile(
              "Change Username", "message", "edit (2).png", 10, context),
          // settingsPageTile(
          //     "Privacy policy", "message", "privacy-policy.png", 10, context),
          ElevatedButton(
            onPressed: () {},
            child: Text("Log Out"),
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
    );
  }
}
