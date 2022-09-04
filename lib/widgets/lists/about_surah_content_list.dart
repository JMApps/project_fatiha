import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/items/about_surah_item.dart';
import 'package:timelines/timelines.dart';

class AboutSurahContentList extends StatelessWidget {
  const AboutSurahContentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    final myColor = Theme.of(context).colorScheme;
    return ListView(
      padding: styleHelpers.mainPadding,
      children: [
        FixedTimeline.tileBuilder(
          theme: TimelineTheme.of(context).copyWith(
            nodePosition: 0,
            color: myColor.mainPrimaryDarkColor,
          ),
          builder: TimelineTileBuilder.fromStyle(
            contentsAlign: ContentsAlign.basic,
            contentsBuilder: (context, index) {
              return Card(
                margin: styleHelpers.mainPaddingLeftBottom,
                color: myColor.mainSecondaryAccentColor,
                shape: styleHelpers.mainShapeRadius,
                child: const AboutSurahItem(),
              );
            },
            indicatorStyle: IndicatorStyle.outlined,
            connectorStyle: ConnectorStyle.solidLine,
            endConnectorStyle: ConnectorStyle.dashedLine,
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
