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
        title: Text(
          "Settings",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          settingsPageTile(
              "Privacy policy", "message", "privacy-policy.png", 10, context),
          ElevatedButton(onPressed: () {}, child: Text("Log out"))
        ],
      ),
    );
  }
}
