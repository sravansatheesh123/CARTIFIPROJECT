import 'package:cartifi/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return _LoginViewBody(viewModel: viewModel);
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}

class _LoginViewBody extends StatefulWidget {
  final LoginViewModel viewModel;

  const _LoginViewBody({required this.viewModel, Key? key}) : super(key: key);

  @override
  _LoginViewBodyState createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<_LoginViewBody> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff317773),
        body: SingleChildScrollView(
          child: Container(
            height: screenHeight(context),
            width: screenWidth(context),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Positioned(
                        top: 120,
                        left: 130,
                        child: Image.asset(
                          'assets/images/img.png', // Replace with your image path
                          height: 111,
                          width: 157,
                        ),
                      ),
                      Positioned(
                        top: 160,
                        child: Container(
                          height:
                              560, // Adjust height to accommodate CircleAvatars and text
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: const Text(
                                    "WELCOME BACK!",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      // Email TextFormField with validation
                                      TextFormField(
                                        controller:
                                            widget.viewModel.emailController,
                                        decoration: InputDecoration(
                                          labelText: 'Email',
                                          prefixIcon: Icon(Icons.email),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your email';
                                          }
                                          // Basic email validation
                                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                              .hasMatch(value)) {
                                            return 'Please enter a valid email';
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(height: 20),
                                      // Password TextFormField with validation
                                      TextFormField(
                                        controller:
                                            widget.viewModel.passwordController,
                                        decoration: InputDecoration(
                                          labelText: 'Password',
                                          prefixIcon: Icon(Icons.key),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        obscureText:
                                            true, // Hide password input
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your password';
                                          }
                                          if (value.length < 6) {
                                            return 'Password must be at least 6 characters long';
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(height: 20),
                                      // Row for Remember Me and Forgot Password
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Checkbox(
                                                value:
                                                    widget.viewModel.rememberMe,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    widget.viewModel
                                                        .toggleRememberMe(
                                                            value ?? false);
                                                  });
                                                },
                                              ),
                                              const Text('Remember Me'),
                                            ],
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              // Handle Forgot Password action
                                            },
                                            child: const Text(
                                              'Forgot Password?',
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 30),
                                      // Login Button
                                      SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: widget.viewModel.ondash,
                                          style: ElevatedButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 15),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            backgroundColor: const Color(
                                                0xff317773), // Button color
                                          ),
                                          child: const Text(
                                            'Login',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      // Row for CircleAvatars
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                                "assets/images/img_1.png"),
                                          ),
                                          const SizedBox(
                                              width:
                                                  20), // Spacing between avatars
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                                "assets/images/img_2.png"),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      // "Don’t have an account?" text
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 75.0),
                                        child: Row(
                                          children: [
                                            const Text(
                                              "Don’t have an account? ",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextButton(
                                              onPressed:
                                                  widget.viewModel.gotosingup,
                                              child: const Text(
                                                "Sign Up",
                                                style: TextStyle(
                                                  color: Color(0xff317773),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
