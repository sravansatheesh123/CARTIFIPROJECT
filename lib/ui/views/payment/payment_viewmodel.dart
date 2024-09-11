import 'package:stacked/stacked.dart';

class PaymentViewModel extends BaseViewModel {
  // Dropdown visibility
  bool _isDropdownVisible = false;
  bool get isDropdownVisible => _isDropdownVisible;

  // Selected payment option
  String _selectedOption = 'UPI';
  String get selectedOption => _selectedOption;

  // Payment options
  List<String> _paymentOptions = [
    'Google Pay',
    'PhonePe',
    'Paytm',
    'Amazon Pay',
  ];
  List<String> get paymentOptions => _paymentOptions;

  void toggleDropdown() {
    _isDropdownVisible = !_isDropdownVisible;
    notifyListeners();
  }

  void selectOption(String option) {
    _selectedOption = option;
    _isDropdownVisible = false;
    notifyListeners();
  }
}
