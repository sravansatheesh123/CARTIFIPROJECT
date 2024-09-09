import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Arcrt extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  final String? discount;

  Arcrt({
    Key? key,
    required this.name,
    required this.price,
    required this.image,
    this.discount,
  }) : super(key: key);

  @override
  _HmcrtState createState() => _HmcrtState();
}

class _HmcrtState extends State<Arcrt> {
  bool _isFavorite = false; // State to track if the item is favorited

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite; // Toggle the favorite state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white, // Set the background color to white
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
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
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Text(
              widget.name,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Row(
              children: [
                Text(
                  widget.price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black87,
                    decoration:
                        TextDecoration.lineThrough, // Line-through effect
                    decorationColor: Colors.black, // Color of the line-through
                  ),
                ),
                if (widget.discount != null) ...[
                  SizedBox(width: 10), // Space between price and discount
                  Text(
                    '${widget.discount} off',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
