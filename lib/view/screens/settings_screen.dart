// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/widget/settings_page_tile.dart';
import 'package:talk_tryst/view/settings_page/help_center.dart';
import 'package:talk_tryst/view/settings_page/settings_page.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: BGColors.BackGroundColor,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.1,
                    left: size.width * 0.02,
                    right: size.width * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Settings",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.06),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: size.height * 0.43,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.015),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(size.width * 0.1),
                    topRight: Radius.circular(size.width * 0.1)),
                color: BGColors.BGBTColor,
              ),
              child: ListView(
                padding: EdgeInsets.only(left: size.width * 0.05),
                children: [
                  SizedBox(
                    height: size.height * 0.2,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: size.width * 0.12,
                          backgroundImage:
                              const AssetImage("assets/status image3.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: size.width * 0.05, top: size.height * 0.07),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MINHAJ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.05),
                              ),
                              Text(
                                "9645651389",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * 0.035,
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.edit))
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: settingsPageTile('Settings', 'privacy, security',
                        'account image.png', 0, context),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SettingPage(),
                      ));
                    },
                  ),
                  GestureDetector(
                    child: settingsPageTile('Notification', 'Message, group',
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
                        builder: (context) => const HelpCenter(),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
