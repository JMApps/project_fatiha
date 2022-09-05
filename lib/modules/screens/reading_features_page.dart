import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/widgets/lists/reading_features_content_list.dart';
import 'package:project_fatiha/widgets/other/reading_features_app_bar.dart';

class ReadingFeaturesPage extends StatelessWidget {
  const ReadingFeaturesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColor = Theme.of(context).colorScheme;
    return Container(
      color: myColor.mainPrimaryColor,
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 50),
            child: ReadingFeaturesAppBar(),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/pictures/main_background.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  myColor.mainPrimaryColor.withOpacity(0.1),
                  BlendMode.modulate,
                ),
              ),
            ),
            child: const CupertinoScrollbar(
              child: ReadingFeaturesContentList(),
            ),
          ),
        ),
      ),
    );
  }
}
