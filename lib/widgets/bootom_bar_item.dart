import 'package:flutter/material.dart';

class BootomBarItem extends StatelessWidget {
  const BootomBarItem({
    super.key,
    required this.color,
    required this.text,
    required this.imageUrl,
  });
  final Color color;
  final String text;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imageUrl),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }
}
