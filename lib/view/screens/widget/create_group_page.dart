import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/screens/widget/contact_tile.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGColors.BackGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: [
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
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Contacts",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Create Groups",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
