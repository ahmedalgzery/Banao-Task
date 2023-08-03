import 'package:banao/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

// Define a stateless widget named MyApp, which is the root of your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banao', // App title displayed in the app switcher.
      debugShowCheckedModeBanner:
          false, // Hide the debug banner in the top right corner.
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors
            .white, // Set the default background color of the app to white.
        textTheme: GoogleFonts.interTextTheme(ThemeData.light()
            .textTheme), // Use GoogleFonts.inter font for text.
      ),
      home:
          const HomeScreen(), // Set the home page of the app to HomeScreen widget.
    );
  }
}
