import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';

class SettingsAppBar extends StatelessWidget {
  const SettingsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    return AppBar(
      title: const Text(
        'Настройки',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: const CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/pictures/app_icon.png'),
      ),
      actions: [
        IconButton(
          splashRadius: 20,
          splashColor: myColors.lightIconSplashColor,
          icon: Icon(
            Icons.apps_sharp,
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
