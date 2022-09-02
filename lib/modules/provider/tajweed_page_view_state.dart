import 'package:flutter/material.dart';

class TajweedPageViewState with ChangeNotifier {
  final PageController _tajweedPageViewController = PageController();

  PageController get getTajweedPageViewController => _tajweedPageViewController;

  int _currentPageIndex = 0;

  int get getCurrentPageIndex => _currentPageIndex;

  changePageIndex(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }

  setPageIndex(int index) {
    _tajweedPageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 250),
      curve: Curves.bounceIn,
    );
    notifyListeners();
  }

  @override
  void dispose() {
    _tajweedPageViewController.dispose();
    super.dispose();
  }
}
