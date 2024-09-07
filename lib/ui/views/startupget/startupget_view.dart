import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'startupget_viewmodel.dart';

class StartupgetView extends StackedView<StartupgetViewModel> {
  const StartupgetView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupgetViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff317773),
        body: Stack(
          children: [
            // Image at the top of the screen
            Center(
              child: Image.asset(
                'assets/images/img.png', // Replace with your image path
                height: 150,
                width: 200,
              ),
            ),
            // 'Get Started' button at the bottom of the screen
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 30.0), // Adjust padding as needed
                child: ElevatedButton(
                  onPressed:
                      viewModel.onGetStarted, // Call the ViewModel method
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color(0xff317773),
                    backgroundColor: Colors.white, // Button text color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  StartupgetViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupgetViewModel();
}
