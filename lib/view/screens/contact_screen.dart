import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/widget/build_conversation.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGColors.BackGroundColor,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ),
                    const Text(
                      "Contact",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      // backgroundImage: AssetImage("assets/call-user.png"),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.perm_contact_cal,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              top: 120,
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
                    buildConversationRow('Laura', 'Hello, how are you',
                        'status image1.png', 0, context),
                    buildConversationRow('Kalya', 'Will you visit me',
                        'status image2.png', 2, context),
                    buildConversationRow('Mary', 'I ate your ...',
                        'status image2.png', 6, context),
                    buildConversationRow('Hellen', 'Are you with Kayla again',
                        'status image2.png', 0, context),
                    buildConversationRow('Louren', 'Barrow money please',
                        'status image2.png', 3, context),
                    buildConversationRow(
                        'Tom', 'Hey, whatsup', 'status image2.png', 0, context),
                    buildConversationRow('Laura', 'Helle, how are you',
                        'status image2.png', 0, context),
                    buildConversationRow('Laura', 'Helle, how are you',
                        'status image2.png', 0, context),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
