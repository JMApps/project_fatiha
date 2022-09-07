import 'package:flutter/material.dart';

class MainBottomNavigationState with ChangeNotifier {

  int _initialNavigationIndex = 1;

  int get getInitialNavigationIndex => _initialNavigationIndex;

  changeNavigationIndex(int newIndex) {
    _initialNavigationIndex = newIndex;
    notifyListeners();
  }
}