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
    return Card(
      margin: styleHelpers.onlyBottomMargin,
      elevation: 3,
      color: Theme.of(context).colorScheme.mainFirstCardColor,
      shape: styleHelpers.mainShapeRadius,
      child: Card(
        margin: styleHelpers.onlyLeftMargin,
        shape: styleHelpers.mainShapeRadius,
        child: InkWell(
          borderRadius: styleHelpers.mainBorderRadius,
          onTap: () {},
          child: ListTile(
            contentPadding: styleHelpers.mainSymmetricListTilePadding,
            title: Text(
              cardTitle,
              style: styleHelpers.mainCardTitleTextStyle,
              textAlign: TextAlign.start,
            ),
            subtitle: Text(
              cardTitleDescription,
              style: styleHelpers.mainCardSubTitleTextStyle,
            ),
            trailing: Icon(
              CupertinoIcons.forward,
              color: Theme.of(context).colorScheme.mainFirstCardColor,
              size: 17.5,
            ),
          ),
        ),
      ),
    );
  }
}
