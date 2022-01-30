import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/main_bottom_navigation_state.dart';
import 'package:project_fatiha/presentation/ui/pages/page_about_fatiha.dart';
import 'package:project_fatiha/presentation/ui/pages/page_error_in_reading_fatiha.dart';
import 'package:project_fatiha/presentation/ui/pages/page_fatiha.dart';
import 'package:project_fatiha/presentation/ui/pages/page_reading_words_fatiha.dart';
import 'package:project_fatiha/presentation/ui/pages/page_tajweed_fatiha.dart';
import 'package:project_fatiha/presentation/ui/widgets/salomon_bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final _appPageList = [
    PageAboutFatiha(),
    PageTajweedFatiha(),
    PageFatiha(),
    PageReadingWordsFatiha(),
    PageErrorInReadingFatiha()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _appPageList[context.watch<MainBottomNavigationState>().getCurrentBottomNavigatorIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFFCE7D2E),
        ),
        child: const SalomonBottomNavigationBar(),
      ),
    );
  }
}
