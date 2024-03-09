import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/widget/build_conversation.dart';
import 'package:talk_tryst/view/screens/widget/contact_tile.dart';
import 'package:talk_tryst/view/screens/widget/create_group_page.dart';

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
                padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
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
                            child: const Text(
                              "Create Groups",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CreateGroup(),
                              ));
                            },
                          )
                        ],
                      ),
                    ),
                    cotactTile('Laura', 'status image1.png', 0, context),
                    cotactTile('Kalya', 'status image2.png', 2, context),
                    cotactTile('Mary', 'status image2.png', 6, context),
                    cotactTile('Hellen', 'status image2.png', 0, context),
                    cotactTile('Louren', 'status image2.png', 3, context),
                    cotactTile('Tom', 'status image2.png', 0, context),
                    cotactTile('Laura', 'status image2.png', 0, context),
                    cotactTile('Laura', 'status image2.png', 0, context),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
