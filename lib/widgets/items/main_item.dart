import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';

class MainItem extends StatelessWidget {
  const MainItem({
    Key? key,
    required this.cardTitle,
    required this.cardTitleDescription,
    required this.routeName,
  }) : super(key: key);

  final String cardTitle;
  final String cardTitleDescription;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    final myColor = Theme.of(context).colorScheme;
    return Card(
      margin: styleHelpers.mainMarginBottomOnly,
      elevation: 3,
      color: myColor.mainSecondaryColor,
      shape: styleHelpers.mainShapeRadius,
      child: Card(
        margin: styleHelpers.mainSecondCardLeftMargin,
        shape: styleHelpers.mainShapeRadius,
        child: InkWell(
          splashColor: myColor.mainSecondaryColor.withOpacity(0.15),
          child: ListTile(
            title: Text(
              cardTitle,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: -0.25,
                color: myColor.mainPrimaryColor,
              ),
            ),
            subtitle: Text(
              cardTitleDescription,
              style: const TextStyle(
                letterSpacing: -0.10,
              ),
            ),
            trailing: Icon(
              CupertinoIcons.forward,
              color: myColor.mainAccentColor,
              size: 17.5,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, routeName);
          },
        ),
      ),
    );
  }
}
