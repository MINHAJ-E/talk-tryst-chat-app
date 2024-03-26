import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talk_tryst/auth_gateway.dart';
import 'package:talk_tryst/controller/auth_controller.dart';
import 'package:talk_tryst/controller/bottom_provider.dart';
import 'package:talk_tryst/controller/phonereq_controller.dart';
import 'package:talk_tryst/firebase_options.dart';
import 'package:talk_tryst/view/screens/phone_auth.dart';

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
          create: (context) => PhoneReqProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthenticationProvider(),
        ),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: AuthGate()),
    );
  }
}
