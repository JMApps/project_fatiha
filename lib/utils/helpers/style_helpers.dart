import 'package:flutter/material.dart';

class StyleHelpers {

  // Paddings // Margins
  final mainPadding = const EdgeInsets.all(16);
  final mainMargin = const EdgeInsets.all(16);

  final mainPaddingMini = const EdgeInsets.all(16);
  final mainMarginMini = const EdgeInsets.all(16);

  final onlyBottomMargin = const EdgeInsets.only(bottom: 16);
  final onlyLeftMargin = const EdgeInsets.only(left: 16);

  final mainSymmetricListTilePadding = const EdgeInsets.symmetric(vertical: 8, horizontal: 16);

  // Border Radius // Shape Radius
  final mainBorderRadius = const BorderRadius.all(Radius.circular(20));
  final mainShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)));

  // Border Radius // Shape Radius
  final bottomBorderRadius = const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20));
  final bottomShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)));

  final mainCardTitleTextStyle = const TextStyle(fontFamily: 'Sanfcancisco', fontSize: 18, letterSpacing: -0.25);
  final mainCardSubTitleTextStyle = const TextStyle(fontFamily: 'Sanfcancisco', fontSize: 16, letterSpacing: -0.23);
  final appBarDecorationImage = const DecorationImage(image: AssetImage('assets/pictures/book_layout.png'), opacity: 0.075, fit: BoxFit.cover);
  final mainPageDecorationImage = const DecorationImage(image: AssetImage('assets/pictures/lamp.png'), opacity: 0.05, fit: BoxFit.scaleDown);
}