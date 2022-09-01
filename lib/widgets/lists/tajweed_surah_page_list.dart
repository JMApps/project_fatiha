import 'package:flutter/material.dart';
import 'package:project_fatiha/widgets/items/tajweed_surah_page_item.dart';

class ContentSurahPageList extends StatelessWidget {
  const ContentSurahPageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return const TajweedSurahPageItem();
      },
    );
  }
}
