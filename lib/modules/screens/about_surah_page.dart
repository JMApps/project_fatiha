import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/items/about_surah_app_bar.dart';
import 'package:timelines/timelines.dart';

class AboutSurahPage extends StatelessWidget {
  const AboutSurahPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    final myColor = Theme.of(context).colorScheme;
    return Container(
      color: myColor.mainPrimaryColor,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 66),
            child: Card(
              margin: styleHelpers.mainAppBarWithoutBottomMargin,
              color: myColor.mainPrimaryColor,
              shape: styleHelpers.mainShareRadius,
              child: const AboutSurahAppBar(),
            ),
          ),
          body: CupertinoScrollbar(
            child: SingleChildScrollView(
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
                      return const Card(
                        margin: EdgeInsets.all(16),
                        color: Color(0xFF018ABD),
                        child: Card(
                          margin: EdgeInsets.only(left: 4),
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                      );
                    },
                    indicatorStyle: IndicatorStyle.outlined,
                    connectorStyle: ConnectorStyle.dashedLine,
                    endConnectorStyle: ConnectorStyle.dashedLine,
                    itemCount: 10,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
