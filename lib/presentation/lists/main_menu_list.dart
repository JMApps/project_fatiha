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
      children: [
        MainMenuItem(
          index: 0,
          color: Colors.red.shade300,
          icon: Icons.confirmation_num_outlined,
          title: 'Достоинства',
          subTitle: 'О достоинствах суры',
          routeName: 'about_surah_page',
        ),
        MainMenuItem(
          index: 1,
          color: Colors.orange.shade300,
          icon: Icons.chrome_reader_mode_outlined,
          title: 'Правила',
          subTitle: 'Таджвид суры',
          routeName: 'tajweed_surah_page',
        ),
        MainMenuItem(
          index: 2,
          color: Colors.blue.shade300,
          icon: Icons.account_tree_outlined,
          title: 'Тонкости',
          subTitle: 'Тонкости чтения суры',
          routeName: 'subtleties_surah_page',
        ),
        MainMenuItem(
          index: 3,
          color: Colors.purple.shade300,
          icon: Icons.error_outline_sharp,
          title: 'Ошибки',
          subTitle: 'Частые ошибки при чтении суры',
          routeName: 'read_error_page',
        ),
        MainMenuItem(
          index: 4,
          color: Colors.teal.shade300,
          icon: Icons.manage_accounts_outlined,
          title: 'Руководство',
          subTitle: 'Руководство по использованию приложения',
          routeName: 'management_app_page',
        ),
      ],
    );
  }
}
