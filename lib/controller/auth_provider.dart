import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:talk_tryst/services/auth_services.dart';

class AuthProviders extends ChangeNotifier {
  Future<UserCredential>? user;
  AuthService service = AuthService();

  signInWithPhone(
      String phonenumber, String name, String email, BuildContext context) {
    try {
      service.signInWithPhone(phonenumber, name, email, context);
    } catch (e) {
      throw Exception(e);
    }
  }

  verifyOtp(String verificationid, String otp, Function onSuccess, String name,
      String email) {
    try {
      service.verifyOtp(
          verificationid: verificationid,
          otp: otp,
          onSuccess: onSuccess,
          email: email,
          name: name);
    } catch (e) {
      throw Exception(e);
    }
  }
  // signOut() {
  //   return service.signout();
  // }
}
