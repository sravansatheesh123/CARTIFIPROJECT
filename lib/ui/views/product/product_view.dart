import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart'; // Ensure this path is correct
import 'product_viewmodel.dart'; // Ensure this path is correct

// Dummy ProductViewPage to avoid compilation errors. Replace with actual implementation.
class ProductViewPage extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String discount;

  const ProductViewPage({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.discount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Center(
        child: Column(
          children: [
            Image.asset(image),
            Text(name),
            Text(price),
            Text(discount),
          ],
        ),
      ),
    );
  }
}

class ProductView extends StackedView<ProductViewModel> {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProductViewModel viewModel,
    Widget? child,
  ) {
    // Define screen dimensions
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.02, // Adjusted for responsiveness
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center, // Centers the image
                      child: Image.asset(
                        'assets/images/img.png',
                        height: screenHeight * 0.05, // Scaled with height
                        width: screenWidth * 0.4, // Scaled with width
                        color: const Color(0xff317773),
                      ),
                    ),
                    Align(
                      alignment: Alignment
                          .centerRight, // Aligns the search icon to the right
                      child: IconButton(
                        icon: const Icon(
                          Icons.search_outlined,
                          color: Color(0xff317773),
                          size: 30,
                        ),
                        onPressed: () {
                          // Define the search action here
                        },
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
  ProductViewModel viewModelBuilder(BuildContext context) => ProductViewModel();
}
