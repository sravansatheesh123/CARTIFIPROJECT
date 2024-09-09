import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:cartifi/ui/views/category/crt.dart';

import '../../common/ui_helpers.dart'; // Ensure this file exists and contains any necessary utilities
import 'category_viewmodel.dart';

class CategoryView extends StackedView<CategoryViewModel> {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CategoryViewModel viewModel,
    Widget? child,
  ) {
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
                          "Category",
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

              // First Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Crt(
                        name: 'Footwear',
                        image: 'assets/images/img_15.png',
                      ),
                    ),
                    SizedBox(width: 16), // Add some space between items
                    Expanded(
                      child: Crt(
                        name: 'T-Shirts',
                        image: 'assets/images/img_16.png',
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: screenHeight * 0.02, // Space between rows
              ),

              // Second Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Crt(
                        name: 'Shirts',
                        image: 'assets/images/img_17.png',
                      ),
                    ),
                    SizedBox(width: 16), // Add some space between items
                    Expanded(
                      child: Crt(
                        name: 'Watches',
                        image: 'assets/images/img_18.png',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02, // Space between rows
              ),

              // Second Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Crt(
                        name: 'Trousers',
                        image: 'assets/images/img_19.png',
                      ),
                    ),
                    SizedBox(width: 16), // Add some space between items
                    Expanded(
                      child: Crt(
                        name: 'Accessories',
                        image: 'assets/images/img_20.png',
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
  CategoryViewModel viewModelBuilder(BuildContext context) =>
      CategoryViewModel();
}
