import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/widget/build_conversation.dart';
import 'package:talk_tryst/view/home/widget/contact_avatars.dart';
import 'package:talk_tryst/view/screens/chat_scree.dart';
import 'package:talk_tryst/view/screens/widget/calls_tile.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
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
                      "Calls",
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
                            Icons.call,
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
                    callsTile('Laura', 'Today, 09:30 AM', 'status image1.png',
                        0, context),
                    callsTile('Kalya', 'Yesterday, 09:30 AM',
                        'status image2.png', 2, context),
                    callsTile('Mary', 'Monday, 09:30 AM', 'status image2.png',
                        6, context),
                    callsTile('Hellen', 'Today, 09:30 AM', 'status image2.png',
                        0, context),
                    callsTile('Louren', 'Today, 09:30 AM', 'status image2.png',
                        3, context),
                    callsTile('Tom', 'Sunday, 09:30 AM', 'status image2.png', 0,
                        context),
                    callsTile('Laura', 'Today, 09:30 AM', 'status image2.png',
                        0, context),
                    callsTile('Laura', '2,3,2024, 09:30 AM',
                        'status image2.png', 0, context),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
