// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/screens/widget/contact_tile.dart';
import 'package:talk_tryst/view/screens/widget/create_group_page.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key});

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
                      "Contact",
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
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "My Contacts",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.only(right: size.width * 0.1),
                              child: const Text(
                                "Create Groups",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const CreateGroup(),
                              ));
                            },
                          )
                        ],
                      ),
                    ),
                    cotactTile(
                        'Laura', 'status image1.png', "1234567890", context),
                    cotactTile(
                        'Kalya', 'status image2.png', "1234567890", context),
                    cotactTile(
                        'Mary', 'status image3.png', "1234567890", context),
                    cotactTile(
                        'Hellen', 'status image4.png', "1234567890", context),
                    cotactTile(
                        'Louren', 'status image5.png', "1234567890", context),
                    cotactTile(
                        'Tom', 'status image6.png', "1234567890", context),
                    cotactTile(
                        'Laura', 'status image1.png', "1234567890", context),
                    cotactTile(
                        'Laura', 'status image2.png', "1234567890", context),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
