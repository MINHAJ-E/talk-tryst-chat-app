import 'package:flutter/material.dart';
import 'package:talk_tryst/view/home/widget/user_avatar.dart';

Column callsTile(
    String name, String message, String filename, BuildContext context) {
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
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    message,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, top: 20),
            child: Row(
              children: [
                GestureDetector(
                  child: Image.asset('assets/Call.png'),
                  onTap: () {},
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  child: Image.asset('assets/Video.png'),
                  onTap: () {},
                ),
              ],
            ),
          )
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
