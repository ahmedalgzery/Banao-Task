
import 'package:banao/widgets/event_item.dart';
import 'package:flutter/material.dart';

class EventsAndExperiences extends StatelessWidget {
  const EventsAndExperiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Events and experiences',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Spacer(),
              Text(
                'View all',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.arrow_right_alt_outlined),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => const EventItem(),
            ),
          ),
        ],
      ),
    );
  }
}
