import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talk_tryst/controller/bottom_provider.dart';
import 'package:talk_tryst/view/splash_screen/splash_screen.dart';
import 'package:talk_tryst/view/widget/bottom_bar.dart';

void main() {
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
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
