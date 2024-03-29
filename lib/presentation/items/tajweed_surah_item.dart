import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';

class TajweedSurahItem extends StatelessWidget {
  const TajweedSurahItem({Key? key}) : super(key: key);

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
          collapsedIconColor: Colors.orangeAccent,
          collapsedTextColor: myColors.mainPrimaryColor,
          textColor: Colors.orangeAccent,
          iconColor: myColors.mainPrimaryColor,
          title: const Text(
            'Title',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          children: [
            SelectableHtml(
              data: 'Content',
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
