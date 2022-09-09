import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';

class DropDownReaderNumber extends StatelessWidget {
  const DropDownReaderNumber({
    Key? key,
    required this.readerNumber,
    required this.positionIndex,
  }) : super(key: key);

  final int readerNumber;
  final int positionIndex;

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    return Text(
      'Чтец $readerNumber',
      style: TextStyle(
        color: readerNumber == positionIndex
            ? myColors.mainAccentColor
            : myColors.mainPrimaryColor,
        fontSize: 16,
        fontWeight: readerNumber == positionIndex ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
