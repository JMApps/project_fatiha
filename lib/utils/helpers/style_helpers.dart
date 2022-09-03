import 'package:flutter/material.dart';

class StyleHelpers {

  // Main // Paddings // Margins
  final mainPadding = const EdgeInsets.all(16);
  final mainMargin = const EdgeInsets.all(16);

  final mainPaddingMini = const EdgeInsets.all(8);
  final mainMarginMini = const EdgeInsets.all(8);

  final mainMarginBottomOnly = const EdgeInsets.only(bottom: 16);

  final mainPaddingTopOnly = const EdgeInsets.only(top: 16);

  final mainMarginWithoutTop = const EdgeInsets.only(left: 16, bottom: 16, right: 16);

  final mainAppBarWithoutBottomMargin = const EdgeInsets.only(left: 8, top: 16, right: 8);

  final tajweedIndicatorContainerPadding = const EdgeInsets.only(left: 16, top: 16, right: 16);

  // Border radius
  final mainShapeRadius = RoundedRectangleBorder(borderRadius: BorderRadius.circular(15));
  final mainBorderRadius =  BorderRadius.circular(15);
  final mainTopShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)));
  final mainBottomShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)));
  final mainAppBarShapeRadius =  const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(175, 75)));
  final mainContainerBorderRadius =  const BorderRadius.only(bottomLeft: Radius.elliptical(250, 250), bottomRight: Radius.elliptical(250, 75));
  final tajweedContainerBorderRadius =  const BorderRadius.only(bottomLeft: Radius.elliptical(250, 250), bottomRight: Radius.elliptical(250, 150));

  // Main page
  final mainSecondCardRightMargin = const EdgeInsets.only(right: 16, top: 2, bottom: 2, left: 2);

  // Tajweed page
  final marginWithoutBottom = const EdgeInsets.only(left: 16, top: 16, right: 16);
}
