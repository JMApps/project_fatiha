import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/modules/provider/tajweed_page_view_state.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/lists/tajweed_surah_page_list.dart';
import 'package:project_fatiha/widgets/other/tajweed_surah_app_bar.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TajweedSurahPage extends StatelessWidget {
  const TajweedSurahPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    final myColor = Theme.of(context).colorScheme;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TajweedPageViewState>(
          create: (_) => TajweedPageViewState(),
        ),
      ],
      child: Container(
        color: myColor.mainPrimaryColor,
        child: SafeArea(
          left: false,
          right: false,
          bottom: false,
          child: Scaffold(
            backgroundColor: myColor.mainPrimaryColor,
            appBar: const PreferredSize(
              preferredSize: Size(double.infinity, 50),
              child: TajweedSurahAppBar(),
            ),
            body: Container(
              decoration: BoxDecoration(
                color: myColor.mainBackgroundColor,
                borderRadius: styleHelpers.tajweedContainerBorderRadius,
                image: DecorationImage(
                  image: const AssetImage('assets/pictures/main_background.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    myColor.mainBackgroundColor.withOpacity(0.85),
                    BlendMode.srcATop,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: styleHelpers.tajweedIndicatorContainerPadding,
                    child: Center(
                      child: Consumer<TajweedPageViewState>(
                        builder: (context, pageViewState, _) {
                          return AnimatedSmoothIndicator(
                            count: 6,
                            activeIndex: pageViewState.getCurrentPageIndex,
                            onDotClicked: (index) {
                              pageViewState.setPageIndex(index);
                            },
                            effect: ScrollingDotsEffect(
                              dotWidth: 10,
                              dotHeight: 6,
                              strokeWidth: 1.5,
                              paintStyle: PaintingStyle.fill,
                              dotColor: Colors.white,
                              activeDotColor: myColor.mainAccentColor,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const Expanded(
                    child: ContentSurahPageList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
