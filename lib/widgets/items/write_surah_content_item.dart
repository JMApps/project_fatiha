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
      shape: itemIndex.isOdd ? styleHelpers.tajweedWithoutLeftShapeRadius : styleHelpers.tajweedWithoutRightShapeRadius,
      color: myColor.mainSecondaryAccentColor,
      child: Card(
        elevation: 0,
        margin: styleHelpers.mainSecondCardRightMargin,
        shape: itemIndex.isOdd ? styleHelpers.tajweedWithoutLeftShapeRadius : styleHelpers.tajweedWithoutRightShapeRadius,
        child: InkWell(
          borderRadius: styleHelpers.mainBorderRadius,
          splashColor: myColor.mainSecondaryAccentColor.withOpacity(0.15),
          child: SizedBox(
            height: 50,
            child: Center(
              child: Text(
                'Чтец $itemIndex',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
