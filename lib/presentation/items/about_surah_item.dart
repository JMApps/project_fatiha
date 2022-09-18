import 'package:flutter/cupertino.dart';
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
    return CupertinoScrollbar(
      child: SingleChildScrollView(
        primary: true,
        child: ListTile(
          contentPadding: appWidgetStyle.mainPadding,
          textColor: Colors.teal,
          iconColor: myColors.mainPrimaryColor,
          title: Padding(
            padding: appWidgetStyle.mainPaddingOnlyBottom,
            child: Card(
              shape: appWidgetStyle.mainShape,
              child: Padding(
                padding: appWidgetStyle.mainPadding,
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          subtitle: SelectableHtml(
            data: item.content,
            style: {
              '#': Style(
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
        ),
      ),
    );
  }
}
