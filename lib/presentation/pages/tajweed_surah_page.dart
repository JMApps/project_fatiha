import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/appbars/tajweed_surah_app_bar.dart';
import 'package:project_fatiha/presentation/lists/tajweed_surah_list.dart';

class TajweedSurahPage extends StatelessWidget {
  const TajweedSurahPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: TajweedSurahAppBar(),
      ),
      body: TajweedSurahList(),
    );
  }
}
