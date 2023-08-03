import 'package:banao/service/get_lesson.dart';
import 'package:banao/widgets/bottom_bar.dart';
import 'package:banao/widgets/event_and_experiences.dart';
import 'package:banao/widgets/intro_section.dart';
import 'package:banao/widgets/lesson_for_you.dart';
import 'package:banao/widgets/progaram_for_you.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banao',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.interTextTheme(ThemeData.light().textTheme),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFEEF3FD),
          elevation: 0.0,
          leading: Image.asset('assets/images/Menu.png'),
          actions: [
            Image.asset('assets/images/forum_black_24dp 1.png'),
            Image.asset('assets/images/Notification.png'),
          ],
        ),
        body: const Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntroSection(),
                    SizedBox(
                      height: 30,
                    ),
                    ProgramForYou(),
                    SizedBox(
                      height: 30,
                    ),
                    EventsAndExperiences(),
                    SizedBox(
                      height: 30,
                    ),
                    LessonForYou(),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            BottomBar(),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: ()  {
          LessonService().getLesson();
          
        },child: const Icon(Icons.add),),
      ),
    );
  }
}
