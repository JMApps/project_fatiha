import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class SalomonBottomNavigationBar extends StatelessWidget {
  const SalomonBottomNavigationBar({Key? key}) : super(key: key);

  final int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      itemShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.5),
      ),
      selectedItemColor: const Color(0xFFFFFFFF),
      unselectedItemColor: const Color(0xFFC4D4CA),
      margin: const EdgeInsets.all(16),
      currentIndex: _currentIndex,
      items: [
        SalomonBottomBarItem(
          icon: const Icon(Icons.add),
          title: Text('One'),
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.add),
          title: Text('Two'),
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.add),
          title: Text('Three'),
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.add),
          title: Text('Four'),
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.add),
          title: Text('Five'),
        ),
      ],
    );
  }
}
