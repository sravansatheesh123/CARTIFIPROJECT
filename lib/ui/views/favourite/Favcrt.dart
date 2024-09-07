import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favcrt extends StatefulWidget {
  final String image;
  final String name;
  final String price;

  Favcrt({
    Key? key,
    required this.name,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  _FavcrtState createState() => _FavcrtState();
}

class _FavcrtState extends State<Favcrt> {
  bool _isFavorite = false; // State to track if the item is favorited

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  // State variable to track if the button is pressed
  bool _isAddedToCart = false;

  @override
  Widget build(BuildContext context) {
    // Get the screen width for responsive design
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Material(
        elevation: 5.0, // Set elevation for shadow effect
        borderRadius: BorderRadius.circular(20), // Match border radius
        child: Container(
          height: 150,
          width: screenWidth * 0.9, // Make the width responsive
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius:
                BorderRadius.circular(20), // Adjust curve for smoother edges
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10), // Add border radius to the image container
                      image: DecorationImage(
                        image: AssetImage(widget.image), // Use widget.image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, top: 38),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.name, // Access widget.name
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(
                              height: 5), // Add some space between the text
                          Text(
                            widget.price, // Access widget.price
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black87,
                            ),
                          ),
                          Spacer(), // Add space between the text and button
                          Align(
                            alignment: Alignment
                                .centerLeft, // Align the button to the left
                            child: SizedBox(
                              width: 200, // You can set a fixed width here
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _isAddedToCart =
                                        true; // Update state when button is pressed
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color(0xff317773), // Button color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                child: Text(
                                  _isAddedToCart
                                      ? 'Added Successfully'
                                      : 'Add to Cart', // Change text based on state
                                  style: const TextStyle(
                                    color: Colors.white, // Button text color
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  icon: Icon(
                    _isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: _isFavorite ? Color(0xff317773) : Color(0xff317773),
                    size: 30,
                  ),
                  onPressed: _toggleFavorite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
