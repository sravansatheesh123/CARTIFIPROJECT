import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class CheckoutpageViewModel extends BaseViewModel {
  final PageController pageController = PageController();
  final _navigationService = StackedLocator.instance<NavigationService>();
  onpay() {
    _navigationService.navigateTo('/payment-view');
  }
}
