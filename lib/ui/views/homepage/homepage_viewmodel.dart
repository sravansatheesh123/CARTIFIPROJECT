import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class HomepageViewModel extends BaseViewModel {
  final _navigationService = StackedLocator.instance<NavigationService>();
  final PageController pageController = PageController();
  int _currentPageIndex = 0;

  favourite() {
    _navigationService.navigateTo('/favourite-view');
  }

  shopping() {
    _navigationService.navigateTo('/shopping-view');
  }

  account() {
    _navigationService.navigateTo('/account-view');
  }

  void gotosearch() {
    _navigationService.navigateTo('/search-view');
  }

  gotocat() {
    _navigationService.navigateTo('/category-view');
  }

  gotopop() {
    _navigationService.navigateTo('/popular-view');
  }

  gotoarvl() {
    _navigationService.navigateTo('/arrivals-view');
  }

  gotopro() {
    _navigationService.navigateTo('/product-view');
  }

  int get currentPageIndex => _currentPageIndex;

  void updatePageIndex(int index) {
    _currentPageIndex = index;
    notifyListeners(); // Notifies the UI to rebuild when index changes
  }
}
