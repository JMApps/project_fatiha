import 'package:flutter/material.dart';

class CustomStyles {

  // Paddings // Margins
  final mainPadding = const EdgeInsets.all(16);
  final mainMargin = const EdgeInsets.all(16);

  final fromLeftPadding = const EdgeInsets.only(right: 16, bottom: 16);
  final fromRightPadding = const EdgeInsets.only(left: 16, bottom: 16);

  final fromLeftMargin = const EdgeInsets.only(right: 16, bottom: 16,);
  final fromRightMargin = const EdgeInsets.only(left: 16, bottom: 16);

  // Border Radius // Shape Radius
  final mainBorderRadius = const BorderRadius.all(Radius.circular(20));
  final mainShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)));

  final fromLeftBorderRadius = const BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20));
  final fromRightBorderRadius = const BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20));

  final fromRightShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)));
  final fromLeftShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)));
}
