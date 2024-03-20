// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/screens/widget/calls_tile.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key});

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
                    top: size.height * 0.07,
                    left: size.width * 0.03,
                    right: size.width * 0.03),
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
              top: size.height * 0.15,
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
                    callsTile('Laura', 'Today, 09:30 AM', 'status image1.png',
                        context),
                    callsTile('Kalya', 'Yesterday, 09:30 AM',
                        'status image6.png', context),
                    callsTile('Mary', 'Monday, 09:30 AM', 'status image2.png',
                        context),
                    callsTile('Hellen', 'Today, 09:30 AM', 'status image3.png',
                        context),
                    callsTile('Louren', 'Today, 09:30 AM', 'status image4.png',
                        context),
                    callsTile('Tom', 'Sunday, 09:30 AM', 'status image5.png',
                        context),
                    callsTile('Laura', 'Today, 09:30 AM', 'status image2.png',
                        context),
                    callsTile('Laura', '2,3,2024, 09:30 AM',
                        'status image6.png', context),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
