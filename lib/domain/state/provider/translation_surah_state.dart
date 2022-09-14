import 'package:flutter/material.dart';

class TranslationSurahState with ChangeNotifier {
  final _translateAyahController = PageController(viewportFraction: 0.75);

  PageController get getTranslateAyahController => _translateAyahController;

  toPageAyah(int index) {
    _translateAyahController.jumpToPage(index);
  }

  @override
  void dispose() {
    _translateAyahController.dispose();
    super.dispose();
  }
}
