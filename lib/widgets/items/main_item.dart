import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/config/styles/custom_styles.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';

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
    final customStyles = CustomStyles();
    return Card(
      margin: customStyles.onlyBottomMargin,
      elevation: 7.5,
      color: Theme.of(context).colorScheme.mainFirstCardColor,
      shape: customStyles.mainShapeRadius,
      child: Card(
        margin: customStyles.onlyLeftMargin,
        color: Theme.of(context).colorScheme.mainBackgroundColor,
        shape: customStyles.mainShapeRadius,
        child: InkWell(
          borderRadius: customStyles.mainBorderRadius,
          child: ListTile(
            contentPadding: customStyles.mainPadding,
            title: Text(
              cardTitle,
              style: customStyles.mainCardTitleTextStyle,
              textAlign: TextAlign.start,
            ),
            subtitle: Text(
              cardTitleDescription,
              style: customStyles.mainCardSubTitleTextStyle,
            ),
            trailing: const Icon(
              CupertinoIcons.forward,
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
