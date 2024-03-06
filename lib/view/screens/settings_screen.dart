import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/widget/build_conversation.dart';

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
              top: 420,
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
                          Column(
                            children: [
                              Text("data"),
                              Text("data"),
                            ],
                          )
                        ],
                      ),
                    ),
                    buildConversationRow('Laura', 'Hello, how are you',
                        'status image1.png', 0, context),
                    buildConversationRow('Kalya', 'Will you visit me',
                        'status image2.png', 2, context),
                    buildConversationRow('Mary', 'I ate your ...',
                        'status image2.png', 6, context),
                    buildConversationRow('Hellen', 'Are you with Kayla again',
                        'status image2.png', 0, context),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
