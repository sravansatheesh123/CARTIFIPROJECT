import 'package:cartifi/ui/views/favourite/Favcrt.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'favourite_viewmodel.dart';

class FavouriteView extends StackedView<FavouriteViewModel> {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FavouriteViewModel viewModel,
    Widget? child,
  ) {
    // For responsive sizing
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: screenHeight * 0.02), // Adjusted for responsiveness
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    // Back arrow button
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Color(0xff317773)),
                      onPressed: () {
                        Navigator.pop(
                            context); // Navigates back to the previous page
                      },
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Wishlist",
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
                        width: 48), // Space for symmetry with the back button
                  ],
                ),
              ),
              SizedBox(
                  height: screenHeight *
                      0.03), // Space between title and containers
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Container(
                  height:
                      screenHeight * 0.20, // Adjust height based on screen size
                  width: screenWidth * 1.9, // Adjust width based on screen size
                  child: Favcrt(
                    name: 'Nike Air Max AP ',
                    price: '₹6000',
                    image: 'assets/images/img_8.png',
                  ),
                ),
              ),
              SizedBox(
                  height:
                      screenHeight * 0.02), // Space between the two containers
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Container(
                  height:
                      screenHeight * 0.20, // Same height as the first container
                  width: screenWidth * 1.9, // Same width as the first container
                  child: Favcrt(
                    name: 'Nike Impact 4V        ',
                    price: '₹6000',
                    image: 'assets/images/img_9.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  FavouriteViewModel viewModelBuilder(BuildContext context) =>
      FavouriteViewModel();
}
