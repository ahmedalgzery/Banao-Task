import 'package:banao/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .27,
      color: const Color(0xFFEEF3FD),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello, Priya!',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                imaheUrl: 'assets/images/Book-mark.png',
                text: 'Programs',
              ),
              CustomButton(
                imaheUrl: 'assets/images/help-circle.png',
                text: 'Get help',
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                imaheUrl: 'assets/images/Book-open.png',
                text: 'Learn',
              ),
              CustomButton(
                imaheUrl: 'assets/images/trello.png',
                text: 'DD Tracker',
              )
            ],
          )
        ],
      ),
    );
  }
}
