import 'package:flutter/material.dart';

class LessonItem extends StatelessWidget {
  const LessonItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 280,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x140E443E),
            blurRadius: 12,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
              'assets/images/young-woman-doing-natarajasana-exercise 1.png'),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              'Babycare',
              style: TextStyle(
                color: Color(0xFF598BED),
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              'Understanding of human behaviour',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              maxLines: 2,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Text(
                  '3 min',
                  style: TextStyle(
                    color: Color(0xFF6C747A),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.lock_outline,
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
