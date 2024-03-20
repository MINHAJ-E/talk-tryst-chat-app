import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';

class CustomButtonPhone extends StatelessWidget {
  const CustomButtonPhone(
      {super.key,
      required this.size,
      required this.buttonname,
      required this.onPressed});

  final Size size;
  final String buttonname;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
        height: size.height * 0.08,
        width: size.width,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: BGColors.BGBTColor,
            minimumSize: Size(size.width * 0.9, size.height * 0.08),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(size.width * 0.03),
            ),
          ),
          child: Text(buttonname,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white)),
        ));
  }
}
