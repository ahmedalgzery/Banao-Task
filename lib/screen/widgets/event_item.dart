import 'package:flutter/material.dart';

// Define a stateless widget named EventItem.
class EventItem extends StatelessWidget {
  // Constructor for the EventItem class.
  const EventItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240, // Set the width of the item to 240 pixels.
      height: 280, // Set the height of the item to 280 pixels.
      margin: const EdgeInsets.symmetric(horizontal: 8), // Apply horizontal margin of 8 pixels.
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16), // Rounded corners with a radius of 16.
        boxShadow: const [
          BoxShadow(
            color: Color(0x140E443E), // Set the shadow color with some transparency.
            blurRadius: 12, // Set the blur radius of the shadow to 12.
            offset: Offset(0, 0), // Set the shadow offset to (0, 0).
            spreadRadius: 0, // Set the spread radius of the shadow to 0.
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
              'assets/images/young-woman-doing-natarajasana-exercise 1.png'), // Display the image with the specified asset path.
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
              maxLines: 2, // Display the text in a maximum of 2 lines.
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                const Text(
                  '13 Feb, Sunday',
                  style: TextStyle(
                    color: Color(0xFF6C747A),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(), // Spacer to push the 'Book' button to the right.
                Container(
                  width: 62, // Set the width of the 'Book' button to 62 pixels.
                  height: 26, // Set the height of the 'Book' button to 26 pixels.
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.50, // Set the border width to 0.50 pixels.
                      color: const Color(0xFF598BED), // Set the border color.
                    ),
                    borderRadius: BorderRadius.circular(100), // Rounded corners with a radius of 100.
                  ),
                  child: const Text(
                    'Book',
                    style: TextStyle(
                      color: Color(0xFF598BED),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
