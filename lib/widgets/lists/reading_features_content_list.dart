import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/items/reading_features_item.dart';
import 'package:timelines/timelines.dart';

class ReadingFeaturesContentList extends StatelessWidget {
  const ReadingFeaturesContentList({Key? key}) : super(key: key);

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
                child: const ReadingFeaturesItem(),
              );
            },
            indicatorStyle: IndicatorStyle.dot,
            connectorStyle: ConnectorStyle.dashedLine,
            endConnectorStyle: ConnectorStyle.dashedLine,
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}