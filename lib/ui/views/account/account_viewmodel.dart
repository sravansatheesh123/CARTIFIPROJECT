import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class AccountViewModel extends BaseViewModel {
  final _navigationService = StackedLocator.instance<NavigationService>();
  onlog() {
    _navigationService.navigateTo('/login-signup-view');
  }
}
