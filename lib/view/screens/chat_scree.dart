// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

// ═════════════════════════════════════════════════════════════════════════════

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
          return _buildBody(context, constraints);
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, BoxConstraints constraints) {
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
                child: IconButton(
                  icon: Icon(Icons.attach_file),
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (builder) => bottomSheett(context),
                    );
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
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: TextField(
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
              // Image.asset("assets/mic (1).png"),
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

  Widget bottomSheett(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 278,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: BGColors.BackGroundColor,
        margin: const EdgeInsets.all(18.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column( 
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(
                      Icons.insert_drive_file, Colors.indigo, "Document"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.camera_alt, Colors.pink, "Camera"),
                  SizedBox(  
                    width: 40,
                  ),
                  iconCreation(Icons.insert_photo, Colors.purple, "Gallery"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(Icons.headset, Colors.orange, "Audio"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.location_pin, Colors.teal, "Location"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.person, Colors.blue, "Contact"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconCreation(IconData icons, Color color, String text) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Icon(
              icons,
              size: 29,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
