import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupgetViewModel extends BaseViewModel {
  final _navigationService = StackedLocator.instance<NavigationService>();

  // Business logic can go here in the future
  void onGetStarted() {
    _navigationService.navigateTo('/login-signup-view');
  }

  // Handle the 'Get Started' button press
  // Example: Navigate to the next screen
}
