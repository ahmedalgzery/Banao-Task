import 'package:flutter/material.dart';

// Define a stateless widget named BottomBarItem.
class BottomBarItem extends StatelessWidget {
  // Constructor for the BottomBarItem class.
  const BottomBarItem({
    super.key,
    required this.color, // The color to be applied to the text.
    required this.text, // The text to display below the image.
    required this.imageUrl, // The asset path for the image.
  });

  final Color color; // The color to be applied to the text.
  final String text; // The text to display below the image.
  final String imageUrl; // The asset path for the image.

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Display the image using the provided asset path.
        Image.asset(imageUrl),
        const SizedBox(
          height: 5,
        ),
        // Display the text below the image with the provided style.
        Text(
          text,
          style: TextStyle(
            fontSize: 10, // Set the font size to 10.
            fontWeight: FontWeight.w600, // Set the font weight to bold (600).
            color: color, // Set the text color to the provided color.
          ),
        ),
      ],
    );
  }
}
