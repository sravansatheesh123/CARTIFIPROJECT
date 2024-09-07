import 'package:cartifi/ui/views/account/Setting.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart'; // Assuming this file contains screenHeight and screenWidth helpers
import 'account_viewmodel.dart';

class AccountView extends StackedView<AccountViewModel> {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AccountViewModel viewModel,
    Widget? child,
  ) {
    // Retrieve screen dimensions for responsiveness
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.02, // Adjusted for responsiveness
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Row(
                  children: [
                    // Back arrow button
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: const Color(0xff317773),
                      ),
                      onPressed: () {
                        Navigator.pop(
                            context); // Navigates back to the previous page
                      },
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Profile",
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
                          0.12, // Space for symmetry with the back button
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height:
                      screenHeight * 0.03), // Space between title and avatar
              // Circle Avatar with full image cover
              ClipOval(
                child: Image.asset(
                  "assets/images/img_13.png", // Add your image path
                  fit: BoxFit
                      .cover, // Ensures the image covers the entire circle
                  width: screenWidth *
                      0.3, // Diameter of the circle avatar (responsive)
                  height: screenWidth *
                      0.3, // Diameter of the circle avatar (responsive)
                ),
              ),
              SizedBox(
                  height: screenHeight * 0.02), // Space between avatar and text
              Column(
                children: [
                  Text(
                    "Rone Paul Benny",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.05, // Responsive font size
                    ),
                  ),
                  Text(
                    "ronepaul@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: screenWidth * 0.04, // Responsive font size
                    ),
                  ),
                ],
              ),
              verticalSpaceMedium,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Row(
                  children: [
                    Text(
                      "Account Settings",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: screenWidth * 0.05, // Responsive font size
                      ),
                    ),
                  ],
                ),
              ),
              Setting(),
              verticalSpaceMedium,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Row(
                  children: [
                    Text(
                      "Orders",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: screenWidth * 0.05, // Responsive font size
                      ),
                    ),
                  ],
                ),
              ),
              order(),
              verticalSpaceMedium,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Row(
                  children: [
                    Text(
                      "General",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: screenWidth * 0.05, // Responsive font size
                      ),
                    ),
                  ],
                ),
              ),
              General(),
              verticalSpaceMedium,
              // Add the ElevatedButton here
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: ElevatedButton(
                  onPressed: viewModel.onlog,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffc63030), // Button color
                    padding: EdgeInsets.symmetric(
                      vertical:
                          screenHeight * 0.02, // Responsive button padding
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Rounded corners
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Log out', // Button label
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        color: Colors.white, // Button text color
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02), // Space after button
            ],
          ),
        ),
      ),
    );
  }

  @override
  AccountViewModel viewModelBuilder(BuildContext context) => AccountViewModel();
}
