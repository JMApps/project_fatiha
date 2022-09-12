import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DetailTajweedSurahAppBar extends StatelessWidget {
  const DetailTajweedSurahAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return AppBar(
      title: Text(
        localizations.detailed_tajweed,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        splashColor: Colors.blue.shade100,
        splashRadius: 20,
        icon: const Icon(
          CupertinoIcons.back,
          color: Colors.blueAccent,
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
