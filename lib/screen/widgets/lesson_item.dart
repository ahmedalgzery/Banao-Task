import 'package:banao/model/loesson.dart'; 
import 'package:flutter/material.dart';

// Define a stateless widget named LessonItem.
class LessonItem extends StatelessWidget {
  // Constructor for the LessonItem class.
  const LessonItem({
    super.key,
    required this.lesson, // Required parameter of type LessonModel.
  });

  final LessonModel lesson; // LessonModel object to represent a single lesson.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240, // Set the width of the item to 240 pixels.
      height: 300, // Set the height of the item to 300 pixels.
      margin: const EdgeInsets.symmetric(horizontal: 8), // Apply horizontal margin of 8 pixels.
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16), // Rounded corners with a radius of 16.
        boxShadow: const [
          BoxShadow(
            color: Color(0x140E443E), // Set the shadow color with some transparency.
            blurRadius: 12, // Set the blur radius of the shadow to 12.
            offset: Offset(0, 0), // Set the shadow offset to (0, 0).
            spreadRadius: 0, // Set the spread radius of the shadow to 0.
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
              'assets/images/young-woman-doing-natarajasana-exercise 1.png'), // Display the image with the specified asset path.
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              lesson.category, // Display the lesson category from the LessonModel object.
              style: const TextStyle(
                color: Color(0xFF598BED),
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              lesson.name, // Display the lesson name from the LessonModel object.
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              maxLines: 2, // Display the text in a maximum of 2 lines.
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Text(
                  '${lesson.duration} min', // Display the lesson duration from the LessonModel object.
                  style: const TextStyle(
                    color: Color(0xFF6C747A),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(), // Spacer to push the lock icon to the right.
                const Icon(
                  Icons.lock_outline, // Display the lock icon.
                  color: Color(0xFF6C747A),
                  size: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
