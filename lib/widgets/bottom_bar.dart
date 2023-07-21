import 'package:banao/widgets/bootom_bar_item.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 5),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BootomBarItem(
            color: Color(0xFF598BED),
            imageUrl: 'assets/images/Home.png',
            text: 'Home',
          ),
          BootomBarItem(
            color: Color(0xFF939BA3),
            imageUrl: 'assets/images/Book-open-lite.png',
            text: 'Learn',
          ),
          BootomBarItem(
            color: Color(0xFF939BA3),
            imageUrl: 'assets/images/Layout.png',
            text: 'Hub',
          ),
          BootomBarItem(
            color: Color(0xFF939BA3),
            imageUrl: 'assets/images/Comment.png',
            text: 'Chat',
          ),
          BootomBarItem(
            color: Color(0xFF598BED),
            imageUrl: 'assets/images/Ellipse 14.png',
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
