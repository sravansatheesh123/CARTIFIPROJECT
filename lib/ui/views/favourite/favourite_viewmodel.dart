import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class FavouriteViewModel extends BaseViewModel {
  final _navigationService = StackedLocator.instance<NavigationService>();
  favourite() {
    _navigationService.navigateTo('/favourite-view');
  }

  shopping() {
    _navigationService.navigateTo('/shopping-view');
  }

  account() {
    _navigationService.navigateTo('/account-view');
  }

  home() {
    _navigationService.navigateTo('/homepage-view');
  }
}
