import 'package:cartifi/ui/views/shirts/shrt.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart'; // Ensure this file exists and contains any necessary utilities
import 'shirts_viewmodel.dart';

class ShirtsView extends StackedView<ShirtsViewModel> {
  const ShirtsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ShirtsViewModel viewModel,
    Widget? child,
  ) {
    // Get screen dimensions
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
                          "Result For ‘Shirts’",
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
              SizedBox(
                height: screenHeight * 0.01, // Space between rows
              ),
              // First Row of Shirts
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: screenHeight * 0.35, // Height for the row
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Shrt(
                          name: 'Blue Slim Fit Shirt',
                          discount: "₹6000",
                          price: '₹7000',
                          image: 'assets/images/img_30.png',
                        ),
                      ),
                      SizedBox(
                          width: screenWidth * 0.02), // Space between items
                      Expanded(
                        child: Shrt(
                          name: "Navy Slim Fit Shirt",
                          discount: "₹2000",
                          price: "₹4000",
                          image: "assets/images/img_31.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.0, // Space between rows
              ),
              // First Row of Shirts
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: screenHeight * 0.35, // Height for the row
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Shrt(
                          name: 'White Slim Fit Shirt',
                          discount: "₹3500",
                          price: '₹4000',
                          image: 'assets/images/img_32.png',
                        ),
                      ),
                      SizedBox(
                          width: screenWidth * 0.02), // Space between items
                      Expanded(
                        child: Shrt(
                          name: "Green Casual Shirt",
                          discount: "₹2500",
                          price: "₹4000",
                          image: "assets/images/img_33.png",
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  ShirtsViewModel viewModelBuilder(BuildContext context) => ShirtsViewModel();
}
