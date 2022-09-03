import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/lists/write_surah_content_list.dart';
import 'package:project_fatiha/widgets/other/write_surah_app_bar.dart';
import 'package:project_fatiha/widgets/other/write_surah_player.dart';

class WriteSurahPage extends StatelessWidget {
  const WriteSurahPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColor = Theme.of(context).colorScheme;
    return Container(
      color: myColor.mainPrimaryColor,
      child: const SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, 50),
            child: WriteSurahAppBar(),
          ),
          body: CupertinoScrollbar(
            child: WriteSurahContentList(),
          ),
          bottomNavigationBar: WriteSurahPlayer(),
        ),
      ),
    );
  }
}
