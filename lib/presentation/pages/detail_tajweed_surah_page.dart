import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/appbars/detail_tajweed_surah_app_bar.dart';

class DetailTajweedSurahPage extends StatelessWidget {
  const DetailTajweedSurahPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: DetailTajweedSurahAppBar(),
      ),
      body: Container(),
    );
  }
}
