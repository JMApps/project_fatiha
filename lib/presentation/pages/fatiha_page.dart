import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/provider/home_sliding_segment_state.dart';
import 'package:project_fatiha/domain/state/provider/read_surah_state.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/appbars/fatiha_app_bar.dart';
import 'package:project_fatiha/presentation/lists/fatiha_list.dart';
import 'package:project_fatiha/presentation/widgets/read_fatiha_container.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FatihaPage extends StatelessWidget {
  const FatihaPage({Key? key}) : super(key: key);

  static final List<StatelessWidget> _homePageContainer = [
    const ReadFatihaContainer(),
    const FatihaList(),
  ];

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    final localizations = AppLocalizations.of(context)!;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ReadSurahState>(
          create: (_) => ReadSurahState(),
        ),
      ],
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 160),
          child: FatihaAppBar(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: appWidgetStyle.mainPadding,
              child: CustomSlidingSegmentedControl(
                innerPadding: const EdgeInsets.all(4),
                padding: 32,
                initialValue: context.read<HomeSlidingSegmentState>().getInitialSlidingIndex,
                children: {
                  1: Text(
                    localizations.read,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: myColors.mainTitleColor,
                    ),
                  ),
                  2: Text(
                    localizations.translation,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: myColors.mainTitleColor,
                    ),
                  ),
                },
                decoration: BoxDecoration(
                  color: myColors.mainAppBarColor,
                  borderRadius: appWidgetStyle.mainBorderRadius,
                ),
                thumbDecoration: BoxDecoration(
                  color: myColors.mainAppBarColor,
                  borderRadius: appWidgetStyle.mainBorderRadius,
                  boxShadow: [
                    BoxShadow(
                      color: myColors.mainPrimaryColor.withOpacity(0.5),
                      blurRadius: 0.3,
                      spreadRadius: 0.3,
                    ),
                  ],
                ),
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                onValueChanged: (int newIndex) {
                  context.read<HomeSlidingSegmentState>().changeSlidingIndex(newIndex);
                },
              ),
            ),
            Expanded(
              child: _homePageContainer[context.watch<HomeSlidingSegmentState>().getInitialSlidingIndex - 1],
            ),
          ],
        ),
      ),
    );
  }
}
