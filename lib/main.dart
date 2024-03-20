import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talk_tryst/controller/auth_provider.dart';
import 'package:talk_tryst/controller/bottom_provider.dart';
import 'package:talk_tryst/firebase_options.dart';
import 'package:talk_tryst/view/login/veryfy_otp.dart';
import 'package:talk_tryst/view/screens/otp_screen.dart';
import 'package:talk_tryst/view/screens/phone_auth.dart';
import 'package:talk_tryst/view/signup/create_account.dart';
import 'package:talk_tryst/view/splash_screen/splash_screen.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthProviders(),
        ),
      ],
      child:
          MaterialApp(debugShowCheckedModeBanner: false, home: PhoneAuthPage()),
    );
  }
}
