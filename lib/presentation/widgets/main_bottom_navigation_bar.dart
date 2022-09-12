import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_fatiha/domain/state/provider/main_bottom_navigation_state.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:provider/provider.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    final localizations = AppLocalizations.of(context)!;
    return Container(
      color: myColors.bottomNavigationClipColor,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.elliptical(45, 50),
          topRight: Radius.elliptical(45, 50),
        ),
        child: BottomNavigationBar(
          backgroundColor: myColors.mainAppBarColor,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/apps.png',
                height: 25,
                width: 25,
                color: myColors.mainIconColor,
              ),
              activeIcon: Image.asset(
                'assets/icons/apps.png',
                height: 25,
                width: 25,
                color: myColors.mainSelectedIconColor,
              ),
              label: localizations.menu_page,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home.png',
                height: 25,
                width: 25,
                color: myColors.mainIconColor,
              ),
              activeIcon: Image.asset(
                'assets/icons/home.png',
                height: 25,
                width: 25,
                color: myColors.mainSelectedIconColor,
              ),
              label: localizations.main_page,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/settings.png',
                height: 25,
                width: 25,
                color: myColors.mainIconColor,
              ),
              activeIcon: Image.asset(
                'assets/icons/settings.png',
                height: 25,
                width: 25,
                color: myColors.mainSelectedIconColor,
              ),
              label: localizations.setting_page,
            ),
          ],
          currentIndex: context
              .watch<MainBottomNavigationState>()
              .getInitialNavigationIndex,
          onTap:
              context.read<MainBottomNavigationState>().changeNavigationIndex,
        ),
      ),
    );
  }
}
