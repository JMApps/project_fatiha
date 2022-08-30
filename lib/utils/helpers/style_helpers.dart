import 'package:flutter/material.dart';

class StyleHelpers {

  // Main // Paddings // Margins
  final mainPadding = const EdgeInsets.all(16);
  final mainMargin = const EdgeInsets.all(16);

  final mainPaddingMini = const EdgeInsets.all(8);
  final mainMarginMini = const EdgeInsets.all(8);

  // Border radius
  final mainShareRadius = RoundedRectangleBorder(borderRadius: BorderRadius.circular(15));

  // Main page
  final mainFirstCardBottomMargin = const EdgeInsets.only(bottom: 16);
  final mainSecondCardLeftMargin = const EdgeInsets.only(left: 16, top: 2, bottom: 2, right: 2);
  final mainAppBarWithoutBottomMargin = const EdgeInsets.only(left: 8, top: 16, right: 8);
}
