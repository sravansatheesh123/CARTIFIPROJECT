import 'package:cartifi/ui/views/search/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../account/account_view.dart';
import '../favourite/favourite_view.dart';
import '../homepage/homepage_view.dart';
import '../shopping/shopping_view.dart';

class DashboardViewModel extends BaseViewModel {
  int _currentIndex = 0;
  List<Widget> Pages = [
    HomepageView(),
    FavouriteView(),
    ShoppingView(),
    AccountView(),
    SearchView(),
  ];

  int get currentIndex => _currentIndex;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
