import 'package:flutter/material.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/items/about_surah_item.dart';

class AboutSurahList extends StatelessWidget {
  const AboutSurahList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: appWidgetStyle.mainPadding,
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return const AboutSurahItem();
      },
    );
  }
}
