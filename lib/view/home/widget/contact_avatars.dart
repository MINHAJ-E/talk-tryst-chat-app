import 'package:flutter/material.dart';
import 'package:talk_tryst/view/home/widget/user_avatar.dart';

Padding buildContactAvatar(String name, String filename) {
  return Padding(
    padding: const EdgeInsets.only(right: 20.0),
    child: Column(
      children: [
        UserAvatar(
          filename: filename,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        )
      ],
    ),
  );
}
