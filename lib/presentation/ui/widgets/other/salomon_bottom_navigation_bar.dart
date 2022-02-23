import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/main_bottom_navigation_state.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:provider/provider.dart';

class SalomonBottomNavigationBar extends StatelessWidget {
  const SalomonBottomNavigationBar({Key? key}) : super(key: key);

  Widget _bottomBarIcon(String iconName) {
    return Image.asset('assets/icons/$iconName', width: 25, height: 25);
  }

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      margin: const EdgeInsets.all(10),
      selectedColorOpacity: 0.1,
      selectedItemColor: const Color(0xff1c3116),
      itemShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.5),
      ),
      items: [
        SalomonBottomBarItem(
          icon: _bottomBarIcon('about_f.png'),
          title: const SizedBox(),
        ),
        SalomonBottomBarItem(
          icon: _bottomBarIcon('tajweed_f.png'),
          title: const SizedBox(),
        ),
        SalomonBottomBarItem(
          icon: _bottomBarIcon('fatiha.png'),
          title: const SizedBox(),
        ),
        SalomonBottomBarItem(
          icon: _bottomBarIcon('words_f.png'),
          title: const SizedBox(),
        ),
        SalomonBottomBarItem(
          icon: _bottomBarIcon('error_f.png'),
          title: const SizedBox(),
        ),
      ],
      currentIndex: context.watch<MainBottomNavigationState>().getCurrentBottomNavigatorIndex,
      onTap: context.read<MainBottomNavigationState>().changeNavigationIndex,
    );
  }
}
