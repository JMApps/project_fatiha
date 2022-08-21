import 'package:flutter/material.dart';

class CustomStyles {

  // Paddings // Margins
  final mainPadding = const EdgeInsets.all(16);
  final mainMargin = const EdgeInsets.all(16);

  // Paddings // Margins
  final mainPaddingWithoutBottom = const EdgeInsets.only(left: 16, top: 16, right: 16);
  final mainMarginWithoutBottom = const EdgeInsets.only(left: 16, top: 16, right: 16);

  // Border Radius // Shape Radius
  final mainBorderRadius = const BorderRadius.all(Radius.circular(20));
  final mainShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)));

  // Border Radius // Shape Radius
  final bottomBorderRadius = const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20));
  final bottomShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)));

}
