import 'package:flutter/material.dart';

class StyleHelpers {

  // Main // Paddings // Margins
  final mainPadding = const EdgeInsets.all(16);
  final mainMargin = const EdgeInsets.all(16);

  final mainPaddingMini = const EdgeInsets.all(8);
  final mainMarginMini = const EdgeInsets.all(8);

  final mainMarginBottomOnly = const EdgeInsets.only(bottom: 16);
  final mainMarginLeftOnlyMini = const EdgeInsets.only(left: 8);
  final mainMarginRightOnlyMini = const EdgeInsets.only(right: 8);
  final mainMarginRightBottomOnly = const EdgeInsets.only(right: 16, bottom: 16);
  final mainMarginLeftBottomOnly = const EdgeInsets.only(left: 16, bottom: 16);

  final mainPaddingTopOnly = const EdgeInsets.only(top: 16);
  final mainPaddingTopBottom = const EdgeInsets.only(top: 16, bottom: 16);
  final mainPaddingLeftBottom = const EdgeInsets.only(left: 16, bottom: 16);
  final mainPaddingRightBottom = const EdgeInsets.only(right: 16, bottom: 16);
  final mainPaddingBottomOnly = const EdgeInsets.only(bottom: 16);

  final mainMarginWithoutTop = const EdgeInsets.only(left: 16, bottom: 16, right: 16);

  final mainAppBarWithoutBottomMargin = const EdgeInsets.only(left: 8, top: 16, right: 8);

  final writeSurahItemWithoutLeft = const EdgeInsets.only(top: 16, right: 16);
  final writeSurahItemWithoutRight = const EdgeInsets.only(left: 16, top: 16);

  final tajweedIndicatorContainerPadding = const EdgeInsets.only(left: 16, top: 16, right: 16);
  final mainListIPadding = const EdgeInsets.only(left: 16, top: 66, right: 16, bottom: 16);

  // Border radius
  final mainShapeRadius = RoundedRectangleBorder(borderRadius: BorderRadius.circular(25));
  final mainBorderRadius =  BorderRadius.circular(25);
  final mainTopShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)));
  final mainBottomShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)));
  final mainAppBarShapeRadius =  const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(175, 75)));
  final mainContainerBorderRadius =  const BorderRadius.only(bottomLeft: Radius.elliptical(250, 250), bottomRight: Radius.elliptical(250, 75));
  final tajweedContainerBorderRadius =  const BorderRadius.only(bottomLeft: Radius.elliptical(250, 250), bottomRight: Radius.elliptical(250, 150));
  final tajweedWithoutLeftShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25)));
  final tajweedWithoutRightShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)));
  final writeOnlyTopRadius = const BorderRadius.only(topLeft: Radius.elliptical(75, 50), topRight: Radius.elliptical(75, 50));
  final readErrorRightOnlyShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25)));
  final readErrorLeftOnlyShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)));

  // Main page
  final mainSecondCardRightMargin = const EdgeInsets.only(right: 16, top: 2, bottom: 2, left: 2);

  // Tajweed page
  final marginWithoutBottom = const EdgeInsets.only(left: 16, top: 16, right: 16);
}
