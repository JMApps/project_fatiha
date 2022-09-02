import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';

class WriteSurahContentItem extends StatelessWidget {
  const WriteSurahContentItem({
    Key? key,
    required this.itemIndex,
  }) : super(key: key);

  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    final myColor = Theme.of(context).colorScheme;
    return Card(
      elevation: 3,
      margin: styleHelpers.mainMarginBottomOnly,
      shape: styleHelpers.mainShapeRadius,
      color: myColor.mainSecondaryColor,
      child: Card(
        elevation: 0,
        margin: styleHelpers.mainSecondCardLeftMargin,
        shape: styleHelpers.mainShapeRadius,
        child: Container(
          height: 50,
        ),
      ),
    );
  }
}
