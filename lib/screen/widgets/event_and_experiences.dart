import 'package:banao/screen/widgets/event_item.dart'; // Importing the 'EventItem' widget.
import 'package:flutter/material.dart';

// Define a stateless widget named EventsAndExperiences.
class EventsAndExperiences extends StatelessWidget {
  // Constructor for the EventsAndExperiences class.
  const EventsAndExperiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          // Row for the header section.
          const Row(
            children: [
              // Title of the section.
              Text(
                'Events and experiences',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Spacer(), // Spacer to push 'View all' and icon to the right.
              // 'View all' text with an arrow icon.
              Text(
                'View all',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 5), // SizedBox for spacing between 'View all' text and the arrow icon.
              Icon(Icons.arrow_right_alt_outlined), // Arrow icon.
            ],
          ),
          const SizedBox(height: 35), // SizedBox for spacing between the header and the ListView.
          SizedBox(
            height: 280, // Set the height of the ListView to 280 pixels.
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // Make the ListView scroll horizontally.
              physics: const BouncingScrollPhysics(), // Enable bouncing effect while scrolling.
              itemCount: 10, // The total number of items in the ListView.
              itemBuilder: (context, index) => const EventItem(), // Build each item using the EventItem widget.
            ),
          ),
        ],
      ),
    );
  }
}
