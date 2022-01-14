import 'package:flutter/material.dart';

class MainBottomNavigationState with ChangeNotifier {
  int _currentBottomNavigationIndex = 0;

  int get getCurrentBottomNavigatorIndex => _currentBottomNavigationIndex;

  changeBottomNavigatorIndex(int index) {
    _currentBottomNavigationIndex = index;
    notifyListeners();
  }
}