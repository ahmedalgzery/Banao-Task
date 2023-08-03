import 'package:flutter/material.dart';

// Define a stateless widget named CustomButton.
class CustomButton extends StatelessWidget {
  // Constructor for the CustomButton class.
  const CustomButton({
    super.key,
    required this.imaheUrl, // The asset path for the image.
    required this.text, // The text to display next to the image.
  });

  final String imaheUrl; // The asset path for the image.
  final String text; // The text to display next to the image.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160, // Set the width of the button to 160 pixels.
      height: 50, // Set the height of the button to 50 pixels.
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16), // Rounded corners with a radius of 16.
        border: Border.all(
          color: const Color(0xFF598BED), // Add a border around the button with the specified color.
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 20,
          ),
          Image.asset(imaheUrl), // Display the image using the provided asset path.
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14, // Set the font size of the text to 14.
              fontWeight: FontWeight.w600, // Set the font weight to bold (600).
              color: Color(0xFF598BED), // Set the text color to the specified color.
            ),
          ),
        ],
      ),
    );
  }
}
