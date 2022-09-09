import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/provider/main_bottom_navigation_state.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:provider/provider.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    return Container(
      color: myColors.bottomNavigationClipColor,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.elliptical(45, 50),
          topRight: Radius.elliptical(45, 50),
        ),
        child: BottomNavigationBar(
          backgroundColor: myColors.mainAppBarColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.collections),
              label: 'Меню',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: 'Настройки',
            ),
          ],
          currentIndex: context.watch<MainBottomNavigationState>().getInitialNavigationIndex,
          onTap: context.read<MainBottomNavigationState>().changeNavigationIndex,
        ),
      ),
    );
  }
}
