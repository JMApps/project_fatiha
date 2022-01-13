import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/main_bottom_navigation_state.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:provider/provider.dart';

class SalomonBottomNavigationBar extends StatelessWidget {
  const SalomonBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      margin: const EdgeInsets.all(16),
      selectedItemColor: const Color(0xFFFFFFFF),
      unselectedItemColor: const Color(0xFFC4D4CA),
      itemShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.5),
      ),
      items: [
        SalomonBottomBarItem(
          icon: const Icon(Icons.info),
          title: const SizedBox(),
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.language),
          title: const SizedBox(),
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.phonelink_erase_rounded),
          title: const SizedBox(),
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.translate),
          title: const SizedBox(),
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.error_outline),
          title: const SizedBox(),
        ),
      ],
      currentIndex: context.watch<MainBottomNavigationState>().getCurrentBottomNavigatorIndex,
      onTap: context.read<MainBottomNavigationState>().changeBottomNavigatorIndex,
    );
  }
}
