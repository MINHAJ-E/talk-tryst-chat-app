import 'package:flutter/material.dart';
import 'package:talk_tryst/view/home/widget/user_avatar.dart';

Column buildConversationRow(String name, String message, String filename,
    int msgCount, BuildContext context) {
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
            padding: const EdgeInsets.only(right: 25, top: 5),
            child: Column(
              children: [
                const Text(
                  '16:35',
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                const SizedBox(
                  height: 15,
                ),
                if (msgCount > 0)
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.red,
                    child: Text(
                      msgCount.toString(),
                      style: const TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  )
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
