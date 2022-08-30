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
    required this.cardColor,
  }) : super(key: key);

  final String cardTitle;
  final String cardTitleDescription;
  final String routeName;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    final myColor = Theme.of(context).colorScheme;
    return Card(
      margin: styleHelpers.mainFirstCardBottomMargin,
      elevation: 3,
      color: cardColor,
      shape: styleHelpers.mainShareRadius,
      child: Card(
        margin: styleHelpers.mainSecondCardLeftMargin,
        shape: styleHelpers.mainShareRadius,
        child: InkWell(
          splashColor: cardColor.withOpacity(0.15),
          onTap: () {},
          child: ListTile(
            title: Text(
              cardTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: -0.35,
                color: myColor.mainSubTitleColor,
              ),
              textAlign: TextAlign.start,
            ),
            subtitle: Text(
              cardTitleDescription,
              style: const TextStyle(
                letterSpacing: -0.20,
              ),
            ),
            trailing: Icon(
              CupertinoIcons.forward,
              color: cardColor,
              size: 17.5,
            ),
          ),
        ),
      ),
    );
  }
}
