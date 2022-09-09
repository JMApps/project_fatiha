import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';

class SubtletiesSurahAppBar extends StatelessWidget {
  const SubtletiesSurahAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    return AppBar(
      title: const Text(
        'Тонкости чтения',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        splashColor: myColors.lightIconSplashColor,
        splashRadius: 20,
        icon: Icon(
          CupertinoIcons.back,
          color: Colors.blue.shade400,
          size: 25,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        Padding(
          padding: appWidgetStyle.mainPaddingMini,
          child: const CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/pictures/app_icon.png'),
          ),
        ),
      ],
    );
  }
}
