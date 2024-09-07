import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'Arcrt.dart';
import 'hmcrt.dart';
import 'homepage_viewmodel.dart';

class HomepageView extends StackedView<HomepageViewModel> {
  const HomepageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomepageViewModel viewModel,
    Widget? child,
  ) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
                          onPressed: viewModel.gotosearch),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.25,
                width: screenWidth,
                child: PageView(
                  controller: viewModel.pageController,
                  onPageChanged: (index) => viewModel.updatePageIndex(index),
                  children: [
                    Container(
                      color: Colors.white,
                      child: Image.asset("assets/images/img_4.png"),
                    ),
                    Container(
                      color: Colors.white,
                      child: Image.asset("assets/images/img_3.png"),
                    ),
                    Container(
                      color: Colors.white,
                      child: Image.asset("assets/images/img_5.png"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: viewModel.currentPageIndex == index
                            ? const Color(0xff317773)
                            : Colors.grey,
                      ),
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Category",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Add your 'See All' navigation logic here
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xff317773),
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/img_6.png",
                          height: screenHeight * 0.3, // Responsive height
                          width: screenWidth * 0.45, // Responsive width
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        const Text(
                          "Shoes",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/img_7.png",
                          height: screenHeight * 0.3,
                          width: screenWidth * 0.45,
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        const Text(
                          "T-shirt",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Add your 'See All' navigation logic here
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xff317773),
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.4, // Adjust based on screen size
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Hmcrt(
                        image: "assets/images/img_8.png",
                        name: "Nike Air Max AP",
                        price: "7000",
                        discount: "6000",
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Expanded(
                      child: Hmcrt(
                        image: "assets/images/img_9.png",
                        name: "Nike Impact 4v",
                        price: "7000",
                        discount: "6000",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "New Arrivals",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Add your 'See All' navigation logic here
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xff317773),
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Arcrt(
                        image: "assets/images/img_10.png",
                        name: "Slim Fit Shirt",
                        price: "4000",
                        discount: "3000",
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Expanded(
                      child: Arcrt(
                        image: "assets/images/img_11.png",
                        name: "Casual T-Shirt",
                        price: "4000",
                        discount: "2500",
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
  HomepageViewModel viewModelBuilder(BuildContext context) =>
      HomepageViewModel();
}
