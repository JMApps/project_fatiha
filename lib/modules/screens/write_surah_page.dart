import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/lists/write_surah_content_list.dart';
import 'package:project_fatiha/widgets/other/write_surah_app_bar.dart';

class WriteSurahPage extends StatelessWidget {
  const WriteSurahPage({Key? key}) : super(key: key);

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
              child: const WriteSurahAppBar(),
            ),
          ),
          body: const WriteSurahContentList(),
        ),
      ),
    );
  }
}
