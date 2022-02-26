import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:project_fatiha/data/databases/model/fatiha.dart';

class ItemFatiha extends StatelessWidget {
  const ItemFatiha({
    Key? key,
    required this.index,
    required this.item,
  }) : super(key: key);

  final int index;
  final Fatiha item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      child: Html(
        data: item.ayah,
        style: {
          '#': Style(
            fontSize: const FontSize(20),
            fontFamily: 'QuranFont',
            textAlign: TextAlign.center,
            lineHeight: LineHeight.number(1.5),
          ),
        },
      ),
    );
  }
}
