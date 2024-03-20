import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class CustomPhoneField extends StatelessWidget {
  CustomPhoneField({super.key, required this.phonecontroller});

  final Country selectedcountry = Country(
      phoneCode: "+91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "IN",
      e164Key: "");

  final TextEditingController phonecontroller;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return TextFormField(
      maxLength: 10,
      controller: phonecontroller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: "enter your phone number",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(size.width * 0.12),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Container(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {},
              child: Text(
                "${selectedcountry.flagEmoji} ${selectedcountry.phoneCode}",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )),
    );
  }
}
