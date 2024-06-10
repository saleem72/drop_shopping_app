//

import 'package:drop_shopping_app/features/home_screen/home_screen.dart';
import 'package:drop_shopping_app/features/shacking_badge/shacking_badge_screen.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _currentIndex = 0;

  Widget _widgetFor(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomeScreen();
      default:
        return const ShackingBadgeScreen();
    }
  }

  void _setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _setCurrentIndex,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Other',
          ),
        ],
      ),
      body: _widgetFor(_currentIndex),
    );
  }
}
