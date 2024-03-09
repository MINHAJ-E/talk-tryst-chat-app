import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BGColors.BackGroundColor,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: BGColors.BGBTColor,
          toolbarHeight: 67,
          leadingWidth: 92,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                  )),
              const SizedBox(
                width: 5,
              ),
              const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage("assets/status image3.png"),
              ),
            ],
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Minhaj",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                "Active now",
                style: TextStyle(fontSize: 13, color: Colors.white),
              )
            ],
          ),
          actions: [
            GestureDetector(
              child: Image.asset('assets/Call.png'),
              onTap: () {},
            ),
            const SizedBox(width: 20),
            GestureDetector(
              child: Image.asset('assets/Video.png'),
              onTap: () {},
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container()),
            Container(
              color: BGColors.BGBTColor,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      CupertinoIcons.paperclip,
                      color: Colors.grey[700],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(7),
                    padding: const EdgeInsets.all(4),
                    width: MediaQuery.of(context).size.width * 0.70,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: BGColors.BackGroundColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 17),
                          // color: Colors.grey,
                          margin: const EdgeInsets.only(
                            top: 3,
                          ),
                          width: MediaQuery.of(context).size.width * 0.30,
                          height: MediaQuery.of(context).size.height * 0.10,
                          child: const TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              hintText: 'Write your message',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 17),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Image.asset("assets/files.png"),
                        ),
                      ],
                    ),
                  ),
                  Image.asset("assets/microphone.png"),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset("assets/send.png"),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
