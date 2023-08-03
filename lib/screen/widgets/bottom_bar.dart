import 'package:banao/screen/widgets/bootom_bar_item.dart'; // Importing the BottomBarItem widget.
import 'package:flutter/material.dart';

// Define a stateless widget named BottomBar.
class BottomBar extends StatelessWidget {
  // Constructor for the BottomBar class.
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 5),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Display the first item in the bottom navigation bar.
          BottomBarItem(
            color: Color(0xFF598BED), // Set the text color for this item.
            imageUrl: 'assets/images/Home.png', // Set the image asset path.
            text: 'Home', // Set the text for this item.
          ),
          // Display the second item in the bottom navigation bar.
          BottomBarItem(
            color: Color(0xFF939BA3),
            imageUrl: 'assets/images/Book-open-lite.png',
            text: 'Learn',
          ),
          // Display the third item in the bottom navigation bar.
          BottomBarItem(
            color: Color(0xFF939BA3),
            imageUrl: 'assets/images/Layout.png',
            text: 'Hub',
          ),
          // Display the fourth item in the bottom navigation bar.
          BottomBarItem(
            color: Color(0xFF939BA3),
            imageUrl: 'assets/images/Comment.png',
            text: 'Chat',
          ),
          // Display the fifth item in the bottom navigation bar.
          BottomBarItem(
            color: Color(0xFF598BED),
            imageUrl: 'assets/images/Ellipse 14.png',
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
