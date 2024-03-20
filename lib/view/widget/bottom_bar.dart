import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talk_tryst/controller/bottom_provider.dart';
import 'package:talk_tryst/view/home/home_screen.dart';
import 'package:talk_tryst/view/screens/calls_screen.dart';
import 'package:talk_tryst/view/screens/contact_screen.dart';
import 'package:talk_tryst/view/screens/settings_screen.dart';

class BottomBar extends StatelessWidget {
  BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          body: _pages[provider.selectedindex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color(0xFF313A53),
            currentIndex: provider.selectedindex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              context.read<BottomProvider>().pageNavigator(index);
            },
            selectedIconTheme: const IconThemeData(
              color: Colors.white,
            ),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.message_sharp),
                label: 'Meassage',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.call_sharp), label: 'Calls'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.contact_page), label: 'Contact'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        );
      },
    );
  }

  final List<Widget> _pages = [
    const HomeScreen(),
    const CallsScreen(),
    const ContactScreen(),
    const SettingScreen(),
  ];
}
