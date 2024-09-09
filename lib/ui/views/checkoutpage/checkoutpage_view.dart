import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'checkoutpage_viewmodel.dart';

class CheckoutpageView extends StackedView<CheckoutpageViewModel> {
  const CheckoutpageView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      CheckoutpageViewModel viewModel,
      Widget? child,
      ) {
    // Define screenHeight and screenWidth using MediaQuery
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    // Back arrow button
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Color(0xff317773)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Checkout",
                          style: TextStyle(
                            fontSize: screenWidth * 0.06,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  CheckoutpageViewModel viewModelBuilder(
      BuildContext context,
      ) =>
      CheckoutpageViewModel();
}
