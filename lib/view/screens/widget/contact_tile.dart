import 'package:flutter/material.dart';
import 'package:talk_tryst/view/home/home_screen.dart';
import 'package:talk_tryst/view/home/widget/user_avatar.dart';
import 'package:talk_tryst/view/screens/chat_scree.dart';

Column cotactTile(
    String name, String filename, String subtitle, BuildContext context) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              UserAvatar(filename: filename),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      // const Divider(
      //   indent: 70,
      //   height: 20,
      // )
      const SizedBox(
        height: 20,
      )
    ],
  );
}
