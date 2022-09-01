import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/widgets/items/about_surah_item.dart';
import 'package:timelines/timelines.dart';

class AboutSurahContentList extends StatelessWidget {
  const AboutSurahContentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColor = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: FixedTimeline.tileBuilder(
          theme: TimelineTheme.of(context).copyWith(
            nodePosition: 0,
            color: myColor.mainPrimaryColor,
          ),
          builder: TimelineTileBuilder.fromStyle(
            contentsAlign: ContentsAlign.basic,
            contentsBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.all(16),
                color: myColor.mainPrimaryColor,
                child: const AboutSurahItem(),
              );
            },
            indicatorStyle: IndicatorStyle.outlined,
            connectorStyle: ConnectorStyle.dashedLine,
            endConnectorStyle: ConnectorStyle.dashedLine,
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}
