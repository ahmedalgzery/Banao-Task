// Import statements for required packages and custom widgets.

import 'package:banao/screen/widgets/bottom_bar.dart';
import 'package:banao/screen/widgets/event_and_experiences.dart';
import 'package:banao/screen/widgets/intro_section.dart';
import 'package:banao/screen/widgets/lesson_for_you.dart';
import 'package:banao/screen/widgets/progaram_for_you.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(
              0xFFEEF3FD), // Set the background color of the app bar.
          elevation: 0.0, // Remove the elevation shadow of the app bar.
          leading: Image.asset(
              'assets/images/Menu.png'), // Display an image icon as the leading widget.
          actions: [
            Image.asset(
                'assets/images/forum_black_24dp 1.png'), // Display an image icon as one of the action widgets.
            Image.asset(
                'assets/images/Notification.png'), // Display an image icon as another action widget.
          ],
        ),
        body: const Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics:
                    BouncingScrollPhysics(), // Enable bouncing scroll physics while scrolling.
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntroSection(), // Display the IntroSection widget.
                    SizedBox(
                        height:
                            30), // Add spacing between IntroSection and ProgramForYou.
                    ProgramForYou(), // Display the ProgramForYou widget.
                    SizedBox(
                        height:
                            30), // Add spacing between ProgramForYou and EventsAndExperiences.
                    EventsAndExperiences(), // Display the EventsAndExperiences widget.
                    SizedBox(
                        height:
                            30), // Add spacing between EventsAndExperiences and LessonForYou.
                    LessonForYou(), // Display the LessonForYou widget.
                    SizedBox(
                        height:
                            30), // Add spacing between LessonForYou and BottomBar.
                  ],
                ),
              ),
            ),
            BottomBar(), // Display the BottomBar widget.
          ],
        ),
      ),
    );
  }
}
