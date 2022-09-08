import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/appbars/subtleties_surah_app_bar.dart';

class SubtletiesSurahPage extends StatelessWidget {
  const SubtletiesSurahPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: SubtletiesSurahAppBar(),
      ),
      body: Container(),
    );
  }
}
