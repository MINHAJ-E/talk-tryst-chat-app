import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/widget/alert_dialog.dart';
import 'package:talk_tryst/view/home/widget/build_conversation.dart';
import 'package:talk_tryst/view/home/widget/settings_page_tile.dart';
import 'package:talk_tryst/view/settings_page/help_center.dart';
import 'package:talk_tryst/view/settings_page/settings_page.dart';

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
      body: Stack(
        children: [
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 70, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Settings",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              top: 320,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: BGColors.BGBTColor,
                ),
                child: ListView(
                  padding: const EdgeInsets.only(left: 25),
                  children: [
                    const SizedBox(
                      height: 150,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage("assets/status image3.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 50),
                            child: Column(
                              children: [
                                Text(
                                  "MINHAJ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "9645651389",
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: settingsPageTile('Settings', 'privacy, security',
                          'account image.png', 0, context),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SettingPage(),
                        ));
                      },
                    ),
                    GestureDetector(
                      child: settingsPageTile('Notification', 'Meassage, group',
                          'notification image.png', 2, context),
                      onTap: () {},
                    ),
                    GestureDetector(
                      child: settingsPageTile(
                          'Help',
                          'Help center, contact Us ,Privacy Policy',
                          'help image.png',
                          6,
                          context),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HelpCenter(),
                        ));
                      },
                    ),
                    // buildConversationRow('Hellen', 'Are you with Kayla again',
                    //     'status image2.png', 0, context),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
