import 'package:banao/model/program.dart'; 
import 'package:banao/service/get_progarm.dart'; 
import 'package:banao/screen/widgets/program_item.dart'; 
import 'package:flutter/material.dart';

// Define a stateless widget named ProgramForYou.
class ProgramForYou extends StatelessWidget {
  // Constructor for the ProgramForYou class.
  const ProgramForYou({super.key});

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
                'Programs for you',
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
            child: FutureBuilder<List<ProgramModel>>(
              // FutureBuilder to fetch data from PrgarmService.
              future: PrgarmService().getProgram(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<ProgramModel> program = snapshot.data!; // Get the list of ProgramModel objects.
                  return ListView.builder(
                    scrollDirection: Axis.horizontal, // Make the ListView scroll horizontally.
                    physics: const BouncingScrollPhysics(), // Enable bouncing effect while scrolling.
                    itemCount: program.length, // The total number of programs in the list.
                    itemBuilder: (context, index) => ProgramItem(
                      program: program[index], // Pass each ProgramModel object to the ProgramItem widget.
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
