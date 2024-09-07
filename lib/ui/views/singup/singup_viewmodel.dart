import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class SingupViewModel extends BaseViewModel {
  final _navigationService = StackedLocator.instance<NavigationService>();

  void gotologin() {
    _navigationService.navigateTo('/login-view');
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Controllers for text fields
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // Sign-up method
  void signup(String name, String email, String password) {
    if (formKey.currentState?.validate() ?? false) {
      // Perform sign-up logic here (e.g., API call)
      // Example: print(name, email, password);
    }
  }

  // Navigate to login view
  void loginView() {
    // Navigation logic here
  }
}
