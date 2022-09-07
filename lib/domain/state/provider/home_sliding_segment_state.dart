import 'package:flutter/material.dart';

class HomeSlidingSegmentState with ChangeNotifier {
  int _initialSlidingIndex = 1;

  int get getInitialSlidingIndex => _initialSlidingIndex;

  changeSlidingIndex(int newIndex) {
    _initialSlidingIndex = newIndex;
    notifyListeners();
  }
}