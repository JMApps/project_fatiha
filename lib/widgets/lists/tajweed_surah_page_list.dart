import 'package:flutter/material.dart';
import 'package:project_fatiha/modules/provider/tajweed_page_view_state.dart';
import 'package:project_fatiha/widgets/items/tajweed_surah_page_item.dart';
import 'package:provider/provider.dart';

class ContentSurahPageList extends StatelessWidget {
  const ContentSurahPageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: 6,
      controller: context.watch<TajweedPageViewState>().getTajweedPageViewController,
      onPageChanged: (int currentPage) {
        context.read<TajweedPageViewState>().changePageIndex(currentPage);
      },
      itemBuilder: (BuildContext context, int index) {
        return const TajweedSurahPageItem();
      },
    );
  }
}
