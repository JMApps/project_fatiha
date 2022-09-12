import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutSurahItem extends StatelessWidget {
  const AboutSurahItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    final localizations = AppLocalizations.of(context)!;
    return Card(
      margin: appWidgetStyle.mainMarginOnlyBottom,
      shape: appWidgetStyle.mainShape,
      child: ListTile(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        contentPadding: appWidgetStyle.mainPadding,
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: appWidgetStyle.menuColorContainerBorderRadius,
          ),
          child: Transform.rotate(
            angle: pi / 4,
            child: Container(
              alignment: Alignment.center,
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Transform.rotate(
                angle: pi / -4,
                child: const Icon(
                  Icons.diamond_outlined,
                  color: Colors.teal,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          localizations.dignity,
          style: TextStyle(
            color: myColors.mainTitleColor,
          ),
        ),
      ),
    );
  }
}
