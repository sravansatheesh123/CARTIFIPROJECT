import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'payment_viewmodel.dart';

class PaymentView extends StackedView<PaymentViewModel> {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      PaymentViewModel viewModel,
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
                          "Payment Method",
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
              verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFAF9F9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      // Adjust height based on dropdown visibility
                      height: viewModel.isDropdownVisible
                          ? 100 + (viewModel.paymentOptions.length * 48.0)
                          : 100,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                // Select indicator (circle) on the left
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                                  child: Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      color: Color(0xff317773),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          viewModel.selectedOption,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Arrow icon for dropdown
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: IconButton(
                                    icon: Icon(
                                      viewModel.isDropdownVisible
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                      color: Color(0xff317773),
                                    ),
                                    onPressed: viewModel.toggleDropdown,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Dropdown list
                          if (viewModel.isDropdownVisible)
                            Expanded(
                              child: ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                children: viewModel.paymentOptions.map((option) {
                                  return ListTile(
                                    title: Text(option),
                                    onTap: () {
                                      viewModel.selectOption(option);
                                    },
                                  );
                                }).toList(),
                              ),
                            ),
                        ],
                      ),
                    ),
                    verticalSpaceMedium,
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFAF9F9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 100,
                      width: double.infinity,
                      child: Row(
                        children: [
                          // Select indicator (circle) on the left
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                            child: Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Colors.transparent, // Remove the background color
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(0xff317773), // Border color
                                  width: 2, // Border width
                                ),
                              ),
                            ),
                          ),

                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Credit/Debit Card",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Arrow icon for dropdown
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xff317773),
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
    );
  }

  @override
  PaymentViewModel viewModelBuilder(BuildContext context) => PaymentViewModel();
}
