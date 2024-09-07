import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ShoppingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void checkout() {
    _navigationService.navigateTo('/checkout-view');
  }
}
