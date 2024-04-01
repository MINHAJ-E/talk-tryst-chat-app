import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/view/home/widget/settings_page_tile.dart';

AlertDialog alert(BuildContext context) {
  return AlertDialog(
    title: const Text(
      'Set Profile',
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    content: SizedBox(
      height: 400,
      child: Column(
        children: [
          settingsPageTile("terms and condiiotn", "message",
              "terms-and-conditions.png", 10, context)
        ],
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('CANCEL'),
      ),
    ],
    elevation: 24.0,
    backgroundColor: BGColors.BackGroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}


  //  showDialog(
  //               context: context,
  //               builder: (context) => alert(context),
  //             );