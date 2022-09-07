import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/provider/home_sliding_segment_state.dart';
import 'package:project_fatiha/domain/state/provider/read_surah_state.dart';
import 'package:project_fatiha/presentation/appbars/fatiha_app_bar.dart';
import 'package:project_fatiha/presentation/widgets/read_fatiha_container.dart';
import 'package:provider/provider.dart';

class FatihaPage extends StatelessWidget {
  const FatihaPage({Key? key}) : super(key: key);

  static const _homePageContainer = [
    ReadFatihaContainer(),
    SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ReadSurahState>(
          create: (_) => ReadSurahState(),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade50,
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 160),
          child: FatihaAppBar(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: CustomSlidingSegmentedControl(
                padding: 32,
                initialValue: context.read<HomeSlidingSegmentState>().getInitialSlidingIndex,
                children: const {
                  1: Text('Чтение'),
                  2: Text('Перевод'),
                },
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                thumbDecoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.withOpacity(0.5),
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
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
