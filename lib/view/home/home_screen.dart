import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/widget/build_conversation.dart';
import 'package:talk_tryst/view/home/widget/contact_avatars.dart';
import 'package:talk_tryst/view/screens/chat_scree.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      "Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const CircleAvatar(
                      // backgroundColor: Colors.black,
                      backgroundImage: AssetImage("assets/image.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 110,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
              height: 150,
              decoration: BoxDecoration(
                  color: BGColors.BackGroundColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildContactAvatar('Alla', 'status image4.png'),
                        buildContactAvatar('July', 'status image2.png'),
                        buildContactAvatar('Mikle', 'status image2.png'),
                        buildContactAvatar('Kler', 'status image2.png'),
                        buildContactAvatar('Moane', 'status image2.png'),
                        buildContactAvatar('Julie', 'status image2.png'),
                        buildContactAvatar('Allen', 'status image2.png'),
                        buildContactAvatar('John', 'status image2.png'),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 50,
                  // )
                ],
              ),
            ),
          ),
          Positioned(
              top: 260,
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChatScreen(),
                    ));
                  },
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
                      buildConversationRow('Tom', 'Hey, whatsup',
                          'status image2.png', 0, context),
                      buildConversationRow('Laura', 'Helle, how are you',
                          'status image2.png', 0, context),
                      buildConversationRow('Laura', 'Helle, how are you',
                          'status image2.png', 0, context),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
