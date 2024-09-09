import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class ArrivalsViewModel extends BaseViewModel {
  final PageController pageController = PageController();

  void updatePageIndex(int index) {
    // Handle page index update logic here
    notifyListeners();
  }
}
