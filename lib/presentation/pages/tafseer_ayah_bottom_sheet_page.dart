import 'package:flutter/material.dart';
import 'package:project_fatiha/data/local/sqflite/model/tafseer_surah_item_model.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';

class TafseerAyahBottomSheetPage extends StatelessWidget {
  const TafseerAyahBottomSheetPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  final TafseerSurahItemModel item;

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      margin: appWidgetStyle.mainMargin,
      shape: appWidgetStyle.mainShape,
      child: ListView(
        padding: appWidgetStyle.mainPadding,
        children: [
          Text(
            item.ayahArabic,
            style: TextStyle(
              fontSize: 30,
              color: myColors.mainTitleColor,
              fontFamily: 'Quran',
            ),
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 8),
          Text(
            item.ayahTranslation,
            style: TextStyle(
              fontSize: 18,
              color: myColors.mainPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            item.ayahTafseer,
            style: const TextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
