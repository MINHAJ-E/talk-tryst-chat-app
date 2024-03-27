import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:talk_tryst/model/user_model.dart';
import 'package:talk_tryst/view/login/otp_screen.dart';
import 'package:talk_tryst/view/widget/aju/otp_verification.dart';

class AuthenticationService {
  FirebaseAuth authentication = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // FacebookAuth facebookAuth = FacebookAuth.instance;
  Reference storage = FirebaseStorage.instance.ref();
  String userEmail = '';
  String? profileUrl = "";
  String userName = '';
  getUserName() async {
    DocumentSnapshot? userCredential = await firestore
        .collection('users')
        .doc(authentication.currentUser!.uid)
        .get();
    if (userCredential.exists) {
      userName = userCredential.get('name');
    }
    return userName;
  }

  Future<String> getProfilePictureUrl() async {
    DocumentSnapshot<Map<String, dynamic>> userSnapshot = await firestore
        .collection('users')
        .doc(authentication.currentUser!.uid)
        .get();
    profileUrl = userSnapshot.data()?['profile_picture'];
    return profileUrl ?? '';
  }

  signinWithPhone(
      {required String name,
      required String bio,
      required String phoneNumber,
      required BuildContext context}) async {
    try {
      await authentication.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (phoneAuthCredential) async {
          await authentication.signInWithCredential(phoneAuthCredential);
        },
        verificationFailed: (error) {
          throw Exception(error);
        },
        codeSent: (verificationId, forceResendingToken) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => OtpScreenn(
              verificationid: verificationId,
              phoneNumber: phoneNumber,
              bio: bio,
              name: name,
            ),
          ));
        },
        codeAutoRetrievalTimeout: (verificationId) {},
      );
    } on FirebaseAuthException catch (e) {
      throw Exception('Phone auth is interrupted$e');
    }
  }

  verifyOtp(
      {required String verificationId,
      required String otp,
      required String name,
      required String bio,
      required String phone,
      required Function onSuccess}) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: otp);
      User? user = (await authentication.signInWithCredential(credential)).user;

      if (user != null) {
        final UserModel userData = UserModel(
            bio: bio, userName: name, userId: user.uid, phoneNumber: phone);
        firestore.collection('users').doc(name).set(userData.toJson());
        onSuccess();
      }
    } on FirebaseAuthException catch (e) {
      throw Exception(e);
    }
  }

  signout() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    try {
      // await facebookAuth.logOut();
      await authentication.signOut();
      await googleSignIn.signOut();
    } catch (e) {
      throw Exception('couldnt signout because$e');
    }
  }

  Future<void> uploadProfilePicture(File image) async {
    try {
      String timestamp = DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
      String fileName = '$timestamp.jpg';
      Reference profilePictureRef = storage.child('profile pictures/$fileName');
      await profilePictureRef.putFile(image);
      String profileUrl = await profilePictureRef.getDownloadURL();
      Map<String, dynamic> profileData = {
        'profile_picture': profileUrl,
      };
      await firestore
          .collection("users")
          .doc(authentication.currentUser!.uid)
          .update(profileData);
      profileUrl = profileUrl;
    } catch (e) {
      throw Exception('Error uploading profile picture: $e');
    }
  }
}
