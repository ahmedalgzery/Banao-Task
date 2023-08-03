import 'package:banao/model/loesson.dart'; 
import 'package:banao/service/get_lesson.dart'; 
import 'package:banao/screen/widgets/lesson_item.dart'; 
import 'package:flutter/material.dart';

// Define a stateless widget named LessonForYou.
class LessonForYou extends StatelessWidget {
  // Constructor for the LessonForYou class.
  const LessonForYou({super.key});

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
                'Lessons for you',
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
            height: 270, // Set the height of the ListView to 270 pixels.
            child: FutureBuilder<List<LessonModel>>(
              // FutureBuilder to fetch data from LessonService.
              future: LessonService().getLesson(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<LessonModel> lesson = snapshot.data!; // Get the list of LessonModel objects.
                  return ListView.builder(
                    scrollDirection: Axis.horizontal, // Make the ListView scroll horizontally.
                    physics: const BouncingScrollPhysics(), // Enable bouncing effect while scrolling.
                    itemCount: lesson.length, // The total number of lessons in the list.
                    itemBuilder: (context, index) => LessonItem(
                      lesson: lesson[index], // Pass each LessonModel object to the LessonItem widget.
                    ),
                  );
                } else {
                  // Show a CircularProgressIndicator while waiting for data to load.
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
