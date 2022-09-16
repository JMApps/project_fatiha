import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:project_fatiha/data/local/sqflite/model/about_surah_item_model.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';

class AboutSurahItem extends StatelessWidget {
  const AboutSurahItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final AboutSurahItemModel item;

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    return Card(
      margin: appWidgetStyle.mainMarginOnlyBottom,
      shape: appWidgetStyle.mainShape,
      child: Padding(
        padding: appWidgetStyle.mainPadding,
        child: ExpansionTile(
          controlAffinity: ListTileControlAffinity.trailing,
          childrenPadding: appWidgetStyle.mainPaddingMini,
          collapsedIconColor: Colors.teal,
          collapsedTextColor: myColors.mainPrimaryColor,
          textColor: Colors.teal,
          iconColor: myColors.mainPrimaryColor,
          title: Text(
            item.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          children: [
            SelectableHtml(
              data: item.content,
              style: {
                '#': Style(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  fontSize: const FontSize(18),
                  textAlign: TextAlign.justify,
                ),
                'small': Style(
                  padding: EdgeInsets.zero,
                  fontSize: const FontSize(12),
                ),
                'a': Style(
                  padding: EdgeInsets.zero,
                  fontSize: const FontSize(12),
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
