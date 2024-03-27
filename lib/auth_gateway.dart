import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:talk_tryst/view/home/home_screen.dart';
import 'package:talk_tryst/view/login/phone_auth.dart';
import 'package:talk_tryst/view/widget/aju/sign_up.dart';
import 'package:talk_tryst/view/widget/bottom_bar.dart';
import 'package:talk_tryst/view/widget/aju/login_page.dart';

class AuthGate extends StatefulWidget {
  const AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return BottomBar();
          } else {
            return PhoneAuthPage();
            // return PhoneLoginPage();
            // return LoginPage(
            //   showSignUp: () {
            //     SignUpPage(
            //       showLogin: () {},
            //     );
            //   },
            // );
          }
        },
      ),
    );
  }
}
