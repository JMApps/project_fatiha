import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/widgets/lists/write_surah_auido_list.dart';
import 'package:project_fatiha/widgets/other/write_surah_app_bar.dart';
import 'package:project_fatiha/widgets/other/write_surah_player.dart';

class WriteSurahPage extends StatefulWidget {
  const WriteSurahPage({Key? key}) : super(key: key);

  @override
  State<WriteSurahPage> createState() => _WriteSurahPageState();
}

class _WriteSurahPageState extends State<WriteSurahPage> {
  @override
  Widget build(BuildContext context) {
    final myColor = Theme.of(context).colorScheme;
    return Container(
      color: myColor.mainPrimaryColor,
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 50),
            child: WriteSurahAppBar(),
          ),
          body: Center(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                myColor.writeSurahColor,
                BlendMode.srcATop,
              ),
              child: Image.asset(
                'assets/pictures/surah.png',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              WriteSurahAudioList(),
              const WriteSurahPlayer(),
            ],
          ),
        ),
      ),
    );
  }
}
