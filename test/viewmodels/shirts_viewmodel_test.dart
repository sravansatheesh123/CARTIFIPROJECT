import 'package:flutter_test/flutter_test.dart';
import 'package:cartifi/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ShirtsViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
