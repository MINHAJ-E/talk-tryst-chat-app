import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/screens/widget/bottom_sheet.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

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
              ),
            ),
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return _buildBody(constraints);
        },
      ),
    );
  }

  Widget _buildBody(BoxConstraints constraints) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Container()),
        Container(
          color: BGColors.BGBTColor,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  child: Icon(
                    CupertinoIcons.paperclip,
                    color: Colors.grey[700],
                  ),
                  onTap: () {
                    // bottomSheet(context);
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(7),
                padding: const EdgeInsets.all(4),
                width: constraints.maxWidth * 0.70,
                height: constraints.maxHeight * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: BGColors.BackGroundColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      width: constraints.maxWidth * 0.30,
                      height: constraints.maxHeight * 0.10,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: const TextField(
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          decoration: InputDecoration(
                            hintText: 'Message',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 17),
                            border: InputBorder.none,
                          ),
                          cursorColor: Colors.white,
                          keyboardAppearance: Brightness.dark,
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
              Image.asset("assets/mic (1).png"),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset("assets/send.png"),
              ),
            ],
          ),
        )
      ],
    );
  }

  void bottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const BottomSheettt();
      },
    );
  }
}
