import 'package:flutter/material.dart';
import 'package:project_fatiha/data/local/sqflite/model/tafseer_surah_item_model.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';

class AyahPictureForShare extends StatelessWidget {
  const AyahPictureForShare({Key? key, required this.item,}) : super(key: key);

  final TafseerSurahItemModel item;

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      margin: appWidgetStyle.mainMargin,
      shape: appWidgetStyle.mainShape,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              item.ayahArabic,
              style: TextStyle(
                fontSize: 29,
                color: myColors.mainTitleColor,
                fontFamily: 'Quran',
                wordSpacing: -3,
              ),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            item.ayahTranslation,
            style: TextStyle(
              fontSize: 18,
              color: myColors.mainPrimaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}