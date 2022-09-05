import 'package:flutter/material.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/items/memorization_surah_page_item.dart';

class MemorizationSurahContentList extends StatelessWidget {
  const MemorizationSurahContentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    return ListView.builder(
      padding: styleHelpers.mainPadding,
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) {
        return const MemorizationSurahPageItem();
      },
    );
  }
}
