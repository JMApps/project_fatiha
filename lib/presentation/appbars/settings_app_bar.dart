import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsAppBar extends StatelessWidget {
  const SettingsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    final localizations = AppLocalizations.of(context)!;
    return AppBar(
      title: Text(
        localizations.settings,
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
            Platform.isIOS
                ? 'assets/icons/app_store.png'
                : 'assets/icons/google_play.png',
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
