import 'package:banao/screen/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// Define a stateless widget named IntroSection.
class IntroSection extends StatelessWidget {
  // Constructor for the IntroSection class.
  const IntroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Set the width of the container to match the parent's width.
      height: MediaQuery.of(context).size.height * .35, // Set the height of the container to 35% of the screen height.
      color: const Color(0xFFEEF3FD), // Set the background color of the container.
      padding: const EdgeInsets.symmetric(horizontal: 20), // Apply horizontal padding of 20 pixels.
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Greeting message.
          Text(
            'Hello, Priya!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Message asking for what to learn.
          Text(
            'What do you wanna learn today?',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          // First row with two CustomButtons.
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // First CustomButton with the 'Programs' label.
              CustomButton(
                imaheUrl: 'assets/images/Book-mark.png', // Set the image asset path.
                text: 'Programs', // Set the text for the button.
              ),
              // Second CustomButton with the 'Get help' label.
              CustomButton(
                imaheUrl: 'assets/images/help-circle.png',
                text: 'Get help',
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          // Second row with two CustomButtons.
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Third CustomButton with the 'Learn' label.
              CustomButton(
                imaheUrl: 'assets/images/Book-open.png',
                text: 'Learn',
              ),
              // Fourth CustomButton with the 'DD Tracker' label.
              CustomButton(
                imaheUrl: 'assets/images/trello.png',
                text: 'DD Tracker',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
