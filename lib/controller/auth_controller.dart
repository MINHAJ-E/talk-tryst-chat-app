import 'package:flutter/material.dart';
import 'package:talk_tryst/services/auth/auth_services.dart';

class AuthenticationProvider extends ChangeNotifier {
  AuthenticationService authService = AuthenticationService();

  signinWithPhone(
      {required String name,
      required String bio,
      required String phoneNumber,
      required BuildContext context}) async {
    try {
      await authService.signinWithPhone(
          name: name, bio: bio, phoneNumber: phoneNumber, context: context);
    } catch (e) {
      throw Exception('Phone auth interrupted$e');
    }
    notifyListeners();
  }

  verifyOtp(
      {required String verificationId,
      required String otp,
      required Function onSuccess,
      required String name,
      required String bio,
      required String phone}) {
    try {
      authService.verifyOtp(
          verificationId: verificationId,
          otp: otp,
          onSuccess: onSuccess,
          bio: bio,
          name: name,
          phone: phone);
    } catch (e) {
      throw Exception('otp verification interrupted because$e');
    }
    notifyListeners();
  }

  signOut() async {
    try {
      await authService.signout();
    } catch (e) {
      throw Exception('error sign out becauase$e');
    }
    notifyListeners();
  }
}
