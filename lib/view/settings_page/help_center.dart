import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/widget/settings_page_tile.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGColors.BackGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Help Center",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          settingsPageTile("Help center", "message", "customer-service (1).png",
              10, context),
          settingsPageTile(
              "App info", "message", "information (1).png", 10, context),
          settingsPageTile("Terms and condition", "message",
              "terms-and-conditions.png", 10, context),
        ],
      ),
    );
  }
}
