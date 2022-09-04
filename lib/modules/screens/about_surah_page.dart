import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/other/about_surah_app_bar.dart';
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
        left: false,
        right: false,
        bottom: false,
        child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 50),
            child: AboutSurahAppBar(),
          ),
          body: Container(
            decoration: BoxDecoration(
              color: myColor.mainBackgroundColor,
              borderRadius: styleHelpers.mainContainerBorderRadius,
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
              child: AboutSurahContentList(),
            ),
          ),
        ),
      ),
    );
  }
}
