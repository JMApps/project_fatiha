import 'package:flutter/material.dart';

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
    return Text(
      'Чтец $readerNumber',
      style: TextStyle(
        color: readerNumber == positionIndex
            ? Colors.red.shade400
            : Colors.blueGrey.shade800,
        fontSize: 16,
        fontWeight:
            readerNumber == positionIndex ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
