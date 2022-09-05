import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';

class ReadingFeaturesAppBar extends StatelessWidget {
  const ReadingFeaturesAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        color: Colors.white,
        splashRadius: 20,
        icon: const Icon(
          CupertinoIcons.back,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        'Тонкости чтения',
        style: TextStyle(
          color: Theme.of(context).colorScheme.mainTitleColor,
          letterSpacing: -0.40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
