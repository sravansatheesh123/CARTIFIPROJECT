import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'login_signup_viewmodel.dart';

class LoginSignupView extends StackedView<LoginSignupViewModel> {
  const LoginSignupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginSignupViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff317773),
        body: Stack(
          children: [
            // Centered image
            Center(
              child: Image.asset(
                'assets/images/img.png', // Replace with your image path
                height: 150,
                width: 200,
              ),
            ),

            // Curved container at the bottom
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 300, // Adjust height as needed
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(
                      20.0), // Adjust padding inside the container
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "HELLO!",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),

                      const SizedBox(height: 30),

                      // Login button
                      ElevatedButton(
                        onPressed: viewModel.onGetStarted,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                              0xff317773), // Button background color
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20), // Rounded edges
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 60),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 15), // Space between buttons

                      // Signup button
                      OutlinedButton(
                        onPressed: viewModel.onGetsign,
                        // Handle signup button press

                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Color(0xff317773), // Border color
                            width: 2.0, // Border width
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20), // Rounded edges
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 55),
                        ),
                        child: const Text(
                          'Signup',
                          style:
                              TextStyle(color: Color(0xff101212), fontSize: 16),
                        ),
                      ),
                    ],
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
  LoginSignupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginSignupViewModel();
}
