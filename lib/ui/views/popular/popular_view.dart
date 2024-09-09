import 'package:cartifi/ui/views/popular/Pop.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'popular_viewmodel.dart';

class PopularView extends StackedView<PopularViewModel> {
  const PopularView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PopularViewModel viewModel,
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
                          "Popular",
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
                height: screenHeight * 0.02,
              ),
              // Adjusted size for the container holding Pop widgets
              SizedBox(
                height: screenHeight * 0.35, // Reduced height for the first row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Pop(
                        name: 'Nike Air Max AP',
                        discount: "₹6000",
                        price: '₹7000',
                        image: 'assets/images/img_8.png',
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Expanded(
                      child: Pop(
                        name: "Navy Slim Fit Shirt",
                        discount: "₹2000",
                        price: "₹4000",
                        image: "assets/images/img_21.png",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.0, // Reduced space between rows
              ),
              SizedBox(
                height:
                    screenHeight * 0.35, // Reduced height for the second row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Pop(
                        name: 'Blue Slim Fit T-shirt',
                        discount: "₹3500",
                        price: '₹4000',
                        image: 'assets/images/img_22.png',
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Expanded(
                      child: Pop(
                        name: "BlackCasual Trouser",
                        discount: "₹2500",
                        price: "₹4000",
                        image: "assets/images/img_23.png",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.0, // Reduced space between rows
              ),
              SizedBox(
                height:
                    screenHeight * 0.35, // Reduced height for the second row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Pop(
                        name: 'Nike Impact 4V',
                        discount: "₹6000",
                        price: '₹7000',
                        image: 'assets/images/img_9.png',
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Expanded(
                      child: Pop(
                        name: "GA-2100P-1A",
                        discount: "₹9500",
                        price: "₹15000",
                        image: "assets/images/img_24.png",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.0, // Reduced space between rows
              ),
              SizedBox(
                height:
                    screenHeight * 0.35, // Reduced height for the second row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Pop(
                        name: 'Allen Solly shirt',
                        discount: "₹2000",
                        price: '₹3000',
                        image: 'assets/images/img_21.png',
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Expanded(
                      child: Pop(
                        name: "Levis",
                        discount: "₹2000",
                        price: "₹5000",
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
  PopularViewModel viewModelBuilder(BuildContext context) => PopularViewModel();
}
