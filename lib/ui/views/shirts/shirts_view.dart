import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'shirts_viewmodel.dart';

class ShirtsView extends StackedView<ShirtsViewModel> {
  const ShirtsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ShirtsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  ShirtsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ShirtsViewModel();
}
