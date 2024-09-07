import 'package:cartifi/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginSignupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void onGetStarted() {
    _navigationService.navigateTo('/login-view');
  }

  void onGetsign() {
    _navigationService.navigateTo('/singup-view');
  }
}
