import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';

class MainMenuItem extends StatelessWidget {
  const MainMenuItem({
    Key? key,
    required this.index,
    required this.color,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.routeName,
  }) : super(key: key);

  final int index;
  final Color color;
  final IconData icon;
  final String title;
  final String subTitle;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      shape: appWidgetStyle.mainShape,
      child: InkWell(
        borderRadius: appWidgetStyle.mainBorderRadius,
        splashColor: color.withOpacity(0.1),
        child: ListTile(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          contentPadding: appWidgetStyle.mainPadding,
          leading: Transform.rotate(
            angle: pi / 4,
            child: Container(
              padding: appWidgetStyle.mainPadding,
              alignment: Alignment.center,
              width: 55,
              height: 75,
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: appWidgetStyle.menuColorContainerBorderRadius,
              ),
              child: Transform.rotate(
                angle: pi / -4,
                child: Icon(
                  icon,
                  color: color,
                ),
              ),
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: myColors.mainTitleColor,
            ),
          ),
          subtitle: Text(
            subTitle,
            style: TextStyle(
              color: myColors.mainSubTitleColor,
            ),
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
      ),
    );
  }
}
