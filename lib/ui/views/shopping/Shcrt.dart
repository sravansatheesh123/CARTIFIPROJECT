import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shcrt extends StatefulWidget {
  final String image;
  final String name;
  final String price;

  Shcrt({
    Key? key,
    required this.name,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  _ShcrtState createState() => _ShcrtState();
}

class _ShcrtState extends State<Shcrt> {
  bool _isVisible = true; // Track visibility of the container

  @override
  Widget build(BuildContext context) {
    // Get the screen width for responsive design
    double screenWidth = MediaQuery.of(context).size.width;

    return _isVisible
        ? Padding(
            padding: const EdgeInsets.all(7.0),
            child: Material(
              elevation: 5.0, // Set elevation for shadow effect
              borderRadius: BorderRadius.circular(20), // Match border radius
              child: Container(
                height: 100,
                width: screenWidth * 0.9, // Make the width responsive
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(
                      20), // Adjust curve for smoother edges
                ),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 88,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                15), // Add border radius to the image container
                            image: DecorationImage(
                              image:
                                  AssetImage(widget.image), // Use widget.image
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.name, // Access widget.name
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        5), // Add some space between the text
                                Text(
                                  widget.price, // Access widget.price
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Positioned IconButton in the top-right corner
                    Positioned(
                      top: 8,
                      right: 8,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _isVisible =
                                false; // Set visibility to false when clicked
                          });
                        },
                        icon: Icon(Icons.cancel_outlined, size: 35),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : SizedBox(); // If not visible, show an empty widget
  }
}
