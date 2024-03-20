import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {required this.icons,
      required this.hintText,
      required this.controller,
      super.key});
  final String hintText;
  final IconData icons;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.all(size.width * 0.05),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(size.width * 0.12),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
