import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor:
          const Color(0xff317773), // Background color for the splash screen
      body: Stack(
        children: [
          Center(
            child: AnimatedOpacity(
              opacity: 1.0, // Full visibility
              duration: const Duration(
                  seconds: 6), // Slow fade-in animation over 6 seconds
              child: AnimatedScale(
                scale: 1.0, // End at normal size
                duration: const Duration(
                    seconds: 6), // Slow scale animation over 6 seconds
                child: Image.asset(
                  'assets/images/img.png', // Replace with your image path
                  height: 150,
                  width: 200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(BuildContext context) {
    // Assuming you have a NavigationService instance to provide
    final navigationService = NavigationService();
    return StartupViewModel(navigationService);
  }

  @override
  void onViewModelReady(StartupViewModel viewModel) {
    // Trigger the splash screen animation on view model ready
    SchedulerBinding.instance.addPostFrameCallback((_) {
      viewModel.runStartupLogic();
    });
  }
}
