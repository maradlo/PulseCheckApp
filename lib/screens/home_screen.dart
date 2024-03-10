import 'package:flutter/material.dart';
import 'package:pulse_check/screens/my_overview_screen.dart';
import 'package:pulse_check/screens/overview_screen.dart';
import 'package:pulse_check/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const OverviewScreen(),
    const MyOverviewScreen(),
    const SettingsScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey.shade600,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey.shade200,
        onTap: onTabTapped,
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Prehľad',
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Môj prehľad',
              activeIcon: Icon(Icons.person)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Nastavenia',
              activeIcon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
