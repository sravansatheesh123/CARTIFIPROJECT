import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'Shcrt.dart';
import 'shopping_viewmodel.dart';

class ShoppingView extends StackedView<ShoppingViewModel> {
  const ShoppingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ShoppingViewModel viewModel,
    Widget? child,
  ) {
    // Define screenHeight and screenWidth for responsive design
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: screenHeight * 0.02), // Adjusted for responsiveness
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Row(
                  children: [
                    // Back arrow button
                    IconButton(
                      icon: Icon(Icons.arrow_back,
                          color: const Color(0xff317773)),
                      onPressed: () {
                        Navigator.pop(
                            context); // Navigates back to the previous page
                      },
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "My Cart",
                          style: TextStyle(
                            fontSize: screenWidth *
                                0.06, // Adjusted for responsiveness
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                        width: screenWidth *
                            0.12), // Space for symmetry with the back button
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Container(
                  height:
                      screenHeight * 0.15, // Adjust height based on screen size
                  width: screenWidth, // Adjust width based on screen size
                  child: Shcrt(
                    name: 'Nike Air Max AP',
                    price: '₹6,000',
                    image: "assets/images/img_9.png",
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Container(
                  height:
                      screenHeight * 0.15, // Adjust height based on screen size
                  width: screenWidth, // Adjust width based on screen size
                  child: Shcrt(
                    name: 'Nike Air Max AP',
                    price: '₹6,000',
                    image: "assets/images/img_8.png",
                  ),
                ),
              ),
              verticalSpaceMedium,
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.03),
                child: Text(
                  "-------------------------------------------------------------",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: screenWidth * 0.05, // Make text responsive
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Container(
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.9, // Adjust width based on screen size
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "PROMO CODE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                            fontSize:
                                screenWidth * 0.045, // Responsive text size
                          ),
                        ),
                        Container(
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.25,
                          decoration: BoxDecoration(
                            color: Color(0xff317773),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff317773),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Apply",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth * 0.04, // Responsive text
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpaceMedium,
              Container(
                height: screenHeight * 0.2,
                width: screenWidth * 0.9, // Adjust width based on screen size
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Price"),
                          Text("₹12,000.00"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Discount"),
                          Text("₹0"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Shipping"),
                          Text("₹100.00"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Amount",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: screenWidth *
                                  0.045, // Adjusted for responsiveness
                            ),
                          ),
                          Text(
                            "₹12,100.00",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: screenWidth *
                                  0.045, // Adjusted for responsiveness
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpaceMedium,
              ElevatedButton(
                onPressed: viewModel.checkout,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xff317773), // Button background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded edges
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.02,
                    horizontal: screenWidth * 0.2,
                  ),
                ),
                child: Text(
                  'Proceed To Payment',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:
                        screenWidth * 0.045, // Adjusted for responsiveness
                  ),
                ),
              ),
              verticalSpaceMedium
            ],
          ),
        ),
      ),
    );
  }

  @override
  ShoppingViewModel viewModelBuilder(BuildContext context) =>
      ShoppingViewModel();
}
