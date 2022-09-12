import 'package:flutter/material.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/items/main_menu_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainMenuList extends StatelessWidget {
  const MainMenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
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
          color: Colors.teal,
          icon: Icons.diamond_outlined,
          title: localizations.dignities,
          subTitle: localizations.dignities_description,
          routeName: 'about_surah_page',
        ),
        MainMenuItem(
          index: 1,
          color: Colors.orangeAccent,
          icon: Icons.chrome_reader_mode_outlined,
          title: localizations.main_tajweed,
          subTitle: localizations.main_tajweed_description,
          routeName: 'tajweed_surah_page',
        ),
        MainMenuItem(
          index: 2,
          color: Colors.blueAccent,
          icon: Icons.account_tree_outlined,
          title: localizations.detailed_tajweed,
          subTitle: localizations.detailed_tajweed_description,
          routeName: 'subtleties_surah_page',
        ),
        MainMenuItem(
          index: 3,
          color: Colors.redAccent,
          icon: Icons.nearby_error ,
          title: localizations.read_errors,
          subTitle: localizations.read_errors_description,
          routeName: 'read_error_page',
        ),
        MainMenuItem(
          index: 4,
          color: Colors.purpleAccent,
          icon: Icons.manage_accounts_outlined,
          title: localizations.manual,
          subTitle: localizations.manual_description,
          routeName: 'management_app_page',
        ),
      ],
    );
  }
}
