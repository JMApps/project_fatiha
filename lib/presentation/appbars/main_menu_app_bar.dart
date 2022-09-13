import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';

class MainMenuAppBar extends StatelessWidget {
  const MainMenuAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    final localizations = AppLocalizations.of(context)!;
    return AppBar(
      title: Text(
        localizations.main_menu,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: const CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/pictures/app_icon.png'),
      ),
      actions: [
        IconButton(
          tooltip: localizations.go_to_store,
          splashRadius: 20,
          splashColor: myColors.lightIconSplashColor,
          icon: Image.asset(
            'assets/icons/like_apps.png',
            height: 25,
            width: 25,
            color: myColors.mainIconColor,
          ),
          onPressed: () {
            // Делиться заранее заготовленной картинкой с QR кодом
          },
        ),
      ],
    );
  }
}
