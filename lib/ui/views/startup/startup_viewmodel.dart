import 'package:cartifi/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'dart:async';

class StartupViewModel extends BaseViewModel {
  final NavigationService _navigationService;

  StartupViewModel(this._navigationService);

  Future runStartupLogic() async {
    await Future.delayed(Duration(seconds: 5));
    _navigationService.replaceWithStartupgetView();
    // Add your startup logic here if necessary
  }
}
