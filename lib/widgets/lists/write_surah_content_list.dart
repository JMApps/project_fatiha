import 'package:flutter/material.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/items/write_surah_content_item.dart';

class WriteSurahContentList extends StatelessWidget {
  const WriteSurahContentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    return ListView.builder(
      padding: styleHelpers.mainPadding,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return WriteSurahContentItem(itemIndex: index);
      },
    );
  }
}
