import 'package:flutter/material.dart';

class Crt extends StatefulWidget {
  final String image;
  final String name;

  const Crt({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  _CrtState createState() => _CrtState();
}

class _CrtState extends State<Crt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
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
            ],
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  widget.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
