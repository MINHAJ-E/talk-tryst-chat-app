import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/widget/build_conversation.dart';
import 'package:talk_tryst/view/home/widget/contact_avatars.dart';
import 'package:talk_tryst/view/screens/chat_scree.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.06,
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/image.png"),
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
            child: Container(
              padding: EdgeInsets.only(
                top: size.height * 0.015,
                left: size.width * 0.0,
                right: size.width * 0.0,
              ),
              height: size.height * 0.5,
              decoration: BoxDecoration(
                color: BGColors.BackGroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(size.width * 0.1),
                  topRight: Radius.circular(size.width * 0.1),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.2,
                    width: size.width * 0.9,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildContactAvatar('Alla', 'status image1.png'),
                        buildContactAvatar('July', 'status image2.png'),
                        buildContactAvatar('Mikle', 'status image3.png'),
                        buildContactAvatar('Kler', 'status image4.png'),
                        buildContactAvatar('Moane', 'status image5.png'),
                        buildContactAvatar('Julie', 'status image6.png'),
                        buildContactAvatar('Allen', 'status image1.png'),
                        buildContactAvatar('John', 'status image2.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.28,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.015),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(size.width * 0.1),
                  topRight: Radius.circular(size.width * 0.1),
                ),
                color: BGColors.BGBTColor,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChatScreen(),
                  ));
                },
                child: ListView(
                  padding: EdgeInsets.only(left: size.width * 0.04),
                  children: [
                    buildConversationRow('Laura', 'Hello, how are you',
                        'status image1.png', 0, context),
                    buildConversationRow('Kalya', 'Will you visit me',
                        'status image2.png', 2, context),
                    buildConversationRow('Mary', 'I ate your ...',
                        'status image3.png', 6, context),
                    buildConversationRow('Hellen', 'Are you with Kayla again',
                        'status image4.png', 0, context),
                    buildConversationRow('Louren', 'Barrow money please',
                        'status image5.png', 3, context),
                    buildConversationRow(
                        'Tom', 'Hey, whatsup', 'status image6.png', 0, context),
                    buildConversationRow('Laura', 'Helle, how are you',
                        'status image1.png', 0, context),
                    buildConversationRow('Laura', 'Helle, how are you',
                        'status image2.png', 0, context),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
