import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/items/about_surah_app_bar.dart';
import 'package:project_fatiha/widgets/lists/about_surah_content_list.dart';

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
            preferredSize: const Size(double.infinity, 70),
            child: Card(
              margin: styleHelpers.mainAppBarWithoutBottomMargin,
              color: myColor.mainPrimaryColor,
              shape: styleHelpers.mainShapeRadius,
              child: const AboutSurahAppBar(),
            ),
          ),
          body: const CupertinoScrollbar(
            child: AboutSurahContentList(),
          ),
        ),
      ),
    );
  }
}
