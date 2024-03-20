import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:talk_tryst/model/user_model.dart';
import 'package:talk_tryst/view/screens/otp_screen.dart';

class AuthService {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  signInWithPhone(String phonenumber, String name, String email,
      BuildContext context) async {
    try {
      await firebaseAuth.verifyPhoneNumber(
          phoneNumber: phonenumber,
          verificationCompleted:
              (PhoneAuthCredential phoneAuthCredential) async {},
          verificationFailed: (FirebaseAuthException error) {
            throw Exception(error.message);
          },
          codeSent: (verificationcode, resendToken) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OtpScreen(
                      verificationid: verificationcode,
                      email: email,
                      name: name),
                ));
          },
          codeAutoRetrievalTimeout: (String codeAutoRetrievalTimeout) {});
    } on FirebaseAuthException catch (e) {
      throw Exception(e);
    }
  }

  verifyOtp(
      {required String verificationid,
      required String otp,
      required String name,
      required String email,
      required Function onSuccess}) async {
    try {
      PhoneAuthCredential cred = PhoneAuthProvider.credential(
          verificationId: verificationid, smsCode: otp);
      User? user = (await firebaseAuth.signInWithCredential(cred)).user;

      if (user != null) {
        final UserModel userdata = UserModel(name: name, uid: user.uid);
        firestore.collection('user').doc(user.uid).set(userdata.toJson());
        onSuccess();
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
