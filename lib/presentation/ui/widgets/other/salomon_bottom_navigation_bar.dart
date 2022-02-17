import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/main_bottom_navigation_state.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:provider/provider.dart';

class SalomonBottomNavigationBar extends StatelessWidget {
  const SalomonBottomNavigationBar({Key? key}) : super(key: key);

  Widget bottomBarIcon(String iconName) {
    return Image.asset('assets/icons/$iconName', width: 25, height: 25);
  }

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      margin: const EdgeInsets.all(10),
      selectedColorOpacity: 0.2,
      selectedItemColor: const Color(0xFF320e1e),
      unselectedItemColor: const Color(0xFF775461),
      itemShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.5),
      ),
      items: [
        SalomonBottomBarItem(
          icon: bottomBarIcon('about_f.png'),
          title: const SizedBox(),
        ),
        SalomonBottomBarItem(
          icon: bottomBarIcon('tajweed_f.png'),
          title: const SizedBox(),
        ),
        SalomonBottomBarItem(
          icon: bottomBarIcon('fatiha.png'),
          title: const SizedBox(),
        ),
        SalomonBottomBarItem(
          icon: bottomBarIcon('words_f.png'),
          title: const SizedBox(),
        ),
        SalomonBottomBarItem(
          icon: bottomBarIcon('error_f.png'),
          title: const SizedBox(),
        ),
      ],
      currentIndex: context.watch<MainBottomNavigationState>().getCurrentBottomNavigatorIndex,
      onTap: context.read<MainBottomNavigationState>().changeNavigationIndex,
    );
  }
}
