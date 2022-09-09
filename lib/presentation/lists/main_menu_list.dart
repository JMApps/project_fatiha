import 'package:flutter/material.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/items/main_menu_item.dart';

class MainMenuList extends StatelessWidget {
  const MainMenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      scrollDirection: Axis.vertical,
      padding: appWidgetStyle.mainPaddingHorizontalBigVerticalMini,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 1 : 2,
        childAspectRatio: MediaQuery.of(context).devicePixelRatio,
        crossAxisSpacing: 16,
        mainAxisSpacing: 4,
      ),
      children: const [
        MainMenuItem(
          index: 0,
          color: Colors.teal,
          icon: Icons.diamond_outlined,
          title: 'Достоинства',
          subTitle: 'О достоинствах суры',
          routeName: 'about_surah_page',
        ),
        MainMenuItem(
          index: 1,
          color: Colors.orangeAccent,
          icon: Icons.chrome_reader_mode_outlined,
          title: 'Правила',
          subTitle: 'Таджвид суры',
          routeName: 'tajweed_surah_page',
        ),
        MainMenuItem(
          index: 2,
          color: Colors.blueAccent,
          icon: Icons.account_tree_outlined,
          title: 'Тонкости',
          subTitle: 'Тонкости чтения суры',
          routeName: 'subtleties_surah_page',
        ),
        MainMenuItem(
          index: 3,
          color: Colors.redAccent,
          icon: Icons.nearby_error ,
          title: 'Ошибки',
          subTitle: 'Частые ошибки при чтении суры',
          routeName: 'read_error_page',
        ),
        MainMenuItem(
          index: 4,
          color: Colors.purpleAccent,
          icon: Icons.manage_accounts_outlined,
          title: 'Руководство',
          subTitle: 'Руководство по использованию приложения',
          routeName: 'management_app_page',
        ),
      ],
    );
  }
}
