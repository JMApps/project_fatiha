import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/items/tajweed_surah_app_bar.dart';
import 'package:project_fatiha/widgets/lists/tajweed_surah_page_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TajweedSurahPage extends StatelessWidget {
  const TajweedSurahPage({Key? key}) : super(key: key);

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
              child: const TajweedSurahAppBar(),
            ),
          ),
          body: const ContentSurahPageList(),
          bottomNavigationBar: Container(
            padding: styleHelpers.mainPaddingMini,
            decoration: BoxDecoration(
              color: myColor.mainPrimaryColor,
              borderRadius: styleHelpers.bottomNavigationTajweedTopRadius,
            ),
            height: 50,
            child: Center(
              child: AnimatedSmoothIndicator(
                count: 6,
                activeIndex: 4,
                effect: ScrollingDotsEffect(
                  dotWidth: 14,
                  dotHeight: 8,
                  strokeWidth: 1.5,
                  paintStyle: PaintingStyle.fill,
                  dotColor: Colors.white,
                  activeDotColor: myColor.mainAccentColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
