import 'package:flutter/material.dart';

class ReadSurahState with ChangeNotifier {
  int _initialReaderIndex = 1;

  int get getReaderIndex => _initialReaderIndex;

  changeReaderIndex(int newIndex) {
    _initialReaderIndex = newIndex;
    notifyListeners();
  }

  playWithName(String nameAudio) {}
}
