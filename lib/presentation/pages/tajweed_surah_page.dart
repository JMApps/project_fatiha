import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/appbars/tajweed_surah_app_bar.dart';

class TajweedSurahPage extends StatelessWidget {
  const TajweedSurahPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: TajweedSurahAppBar(),
      ),
      body: Container(),
    );
  }
}
