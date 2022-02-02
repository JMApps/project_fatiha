import 'package:flutter/material.dart';

class MainBottomNavigationState  with ChangeNotifier {

  int _currentBottomNavigatorIndex = 0;

  int get getCurrentBottomNavigatorIndex => _currentBottomNavigatorIndex;

  changeNavigationIndex(int index) {
    _currentBottomNavigatorIndex = index;
    notifyListeners();
  }
}