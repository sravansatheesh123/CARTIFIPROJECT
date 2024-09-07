import 'package:cartifi/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = StackedLocator.instance<NavigationService>();

  gotosingup() {
    _navigationService.navigateTo('/singup-view');
  }

  onGethome() {
    _navigationService.navigateTo('/homepage-view');
  }

  ondash() {
    _navigationService.navigateTo('/dashboard-view');
  }

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  bool get rememberMe => _rememberMe;

  void toggleRememberMe(bool value) {
    _rememberMe = value;
    notifyListeners();
  }

  Future<void> login(String email, String password) async {
    // Perform login logic
    // For example, check email and password against a database or API
    if (email.isEmpty || password.isEmpty) {
      // Show validation error
      return;
    }

    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
      // Show email error
      return;
    }

    if (password.length < 6) {
      // Show password error
      return;
    }

    // Proceed with login
  }
}
