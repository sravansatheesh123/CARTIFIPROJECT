import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class SearchViewModel extends BaseViewModel {
  String searchQuery = '';

  // Method to handle search query
  void onSearchChanged(String value) {
    searchQuery = value.toLowerCase();
    notifyListeners();
  }

  // Method to handle navigation based on the query
  void navigateBasedOnSearch(BuildContext context) {
    if (searchQuery == 'shirts') {
      Navigator.pushNamed(context, '/shirts-view');
    } else {
      // Handle other search terms
    }
  }
}
