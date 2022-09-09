import 'package:flutter/material.dart';

class AppWidgetStyle {
  // Padding's
  final mainPadding = const EdgeInsets.all(16);
  final mainPaddingMini = const EdgeInsets.all(8);
  final mainPaddingOnlyBottom = const EdgeInsets.only(bottom: 16);
  final mainPaddingWithoutBottom = const EdgeInsets.only(left: 16, top: 16, right: 16);
  final mainPaddingOnlyTopMini = const EdgeInsets.only(top: 8);
  final mainPaddingHorizontalMini = const EdgeInsets.symmetric(horizontal: 8);
  final mainPaddingHorizontalNormalVerticalMini = const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  final mainPaddingHorizontalBigVerticalMini = const EdgeInsets.symmetric(horizontal: 32, vertical: 8);

  // Margin's
  final mainMargin = const EdgeInsets.all(16);
  final mainMarginMini = const EdgeInsets.all(8);
  final mainMarginOnlyBottom = const EdgeInsets.only(bottom: 16);

  // Shape's
  final mainShape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(25));

  // Border radius
  final mainBorderRadius = BorderRadius.circular(25);

  final menuColorContainerBorderRadius = BorderRadius.circular(20);
  final fatihaContainerMargin = const EdgeInsets.only(left: 8, right: 8, bottom: 16);
}