import 'package:cartifi/ui/views/arrivals/Arcrt.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'arrivals_viewmodel.dart';

class ArrivalsView extends StackedView<ArrivalsViewModel> {
  const ArrivalsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ArrivalsViewModel viewModel,
    Widget? child,
  ) {
    // Getting screen dimensions
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
                          "New Arrivals",
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
                height: screenHeight * 0.03,
              ),
              // PageView with navigation arrows
              Stack(
                children: [
                  SizedBox(
                    height: screenHeight * 0.35,
                    width: screenWidth,
                    child: PageView(
                      controller: viewModel.pageController,
                      onPageChanged: (index) =>
                          viewModel.updatePageIndex(index),
                      children: [
                        Container(
                          color: Colors.white,
                          child: Image.asset("assets/images/img_27.png"),
                        ),
                        Container(
                          color: Colors.white,
                          child: Image.asset("assets/images/img_28.png"),
                        ),
                        Container(
                          color: Colors.white,
                          child: Image.asset("assets/images/img_29.png"),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: screenHeight * 0.15, // Adjust based on your design
                    child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        color: Color(0xff317773),
                      ),
                      onPressed: () {
                        viewModel.pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                  ),
                  Positioned(
                    right: 40,
                    top: screenHeight * 0.15, // Adjust based on your design
                    child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xff317773),
                      ),
                      onPressed: () {
                        viewModel.pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.0,
              ),
              // Adjusted size for the container holding Pop widgets
              SizedBox(
                height: screenHeight * 0.35, // Reduced height for the first row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Arcrt(
                        name: 'Slim Fit Shirt',
                        discount: "₹3500",
                        price: '₹4000',
                        image: 'assets/images/img_10.png',
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Expanded(
                      child: Arcrt(
                        name: "Casual T-Shirt",
                        discount: "₹2500",
                        price: "₹4000",
                        image: "assets/images/img_11.png",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.0,
              ),
              // Adjusted size for the container holding Pop widgets
              SizedBox(
                height: screenHeight * 0.35, // Reduced height for the first row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Arcrt(
                        name: 'Nike Impact 4V',
                        discount: "₹5500",
                        price: '₹7000',
                        image: 'assets/images/img_9.png',
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Expanded(
                      child: Arcrt(
                        name: "GA-2100P-1A",
                        discount: "₹2400",
                        price: "₹4000",
                        image: "assets/images/img_24.png",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.0,
              ),
              // Adjusted size for the container holding Pop widgets
              SizedBox(
                height: screenHeight * 0.35, // Reduced height for the first row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Arcrt(
                        name: 'Nike Air Max AP ',
                        discount: "₹3500",
                        price: '₹4000',
                        image: 'assets/images/img_8.png',
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Expanded(
                      child: Arcrt(
                        name: "Casual T-Shirt",
                        discount: "₹1500",
                        price: "₹3000",
                        image: "assets/images/img_22.png",
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
  ArrivalsViewModel viewModelBuilder(BuildContext context) =>
      ArrivalsViewModel();
}
