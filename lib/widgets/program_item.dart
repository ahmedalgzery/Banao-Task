import 'package:banao/model/program.dart';
import 'package:flutter/material.dart';

class ProgramItem extends StatelessWidget {
  const ProgramItem({
    super.key,
    required this.program,
  });
  final ProgramModel program;
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
          Image.asset('assets/images/Frame 122.png'),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              program.category,
              style: const TextStyle(
                color: Color(0xFF598BED),
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              program.name,
              style: const TextStyle(
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
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              '${program.lesson} lessons',
              style: const TextStyle(
                color: Color(0xFF6C747A),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
