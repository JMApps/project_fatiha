import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/appbars/about_surah_app_bar.dart';
import 'package:project_fatiha/presentation/lists/about_surah_list.dart';

class AboutSurahPage extends StatelessWidget {
  const AboutSurahPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AboutSurahAppBar(),
      ),
      body: AboutSurahList(),
    );
  }
}
