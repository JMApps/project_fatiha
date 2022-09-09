import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/main.dart';

class TajweedSurahAppBar extends StatelessWidget {
  const TajweedSurahAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Таджвид суры',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        splashColor: Colors.orange.shade100,
        splashRadius: 20,
        icon: Icon(
          CupertinoIcons.back,
          color: Colors.orange.shade400,
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
