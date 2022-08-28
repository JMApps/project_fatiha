import 'package:flutter/material.dart';

class CustomStyles {

  // Paddings // Margins
  final mainPadding = const EdgeInsets.all(16);
  final mainMargin = const EdgeInsets.all(16);

  final onlyBottomMargin = const EdgeInsets.only(bottom: 16);
  final onlyLeftMargin = const EdgeInsets.only(left: 16);

  // Border Radius // Shape Radius
  final mainBorderRadius = const BorderRadius.all(Radius.circular(20));
  final mainShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)));

  // Border Radius // Shape Radius
  final bottomBorderRadius = const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20));
  final bottomShapeRadius = const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)));

  final mainTitleArabicStyle = TextStyle(fontFamily: 'Mothanna', color: Colors.deepOrange.shade500);
  final mainTitleStyle = TextStyle(fontFamily: 'Ruberoid', fontWeight: FontWeight.bold, color: Colors.deepOrange.shade100);
  final mainCardTitleTextStyle = const TextStyle(fontSize: 17, fontFamily: 'Ruberoid', fontWeight: FontWeight.bold);
  final mainCardSubTitleTextStyle = const TextStyle(fontFamily: 'Ruberoid', color: Colors.black54, fontWeight: FontWeight.bold);
  final appBarDecorationImage = const DecorationImage(image: AssetImage('assets/pictures/book_layout.png'), opacity: 0.15, fit: BoxFit.cover);
  final mainPageDecorationImage = const DecorationImage(image: AssetImage('assets/pictures/lamp.png'), opacity: 0.05, fit: BoxFit.scaleDown);
}
