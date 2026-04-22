// header_section.dart
import 'package:flutter/material.dart';

class HeaderSectionBooking extends StatelessWidget {
  const HeaderSectionBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(radius: 18),
            const SizedBox(width: 10),
            const Text("MedSanctuary",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(),
            Icon(Icons.notifications_none, color: Colors.grey.shade700)
          ],
        ),

        const SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            "Case Requests",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 2),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            "Review and Priotorize Patient Intake",
            style: TextStyle(color: Colors.grey),
          ),
        ),

      ],
    );
  }
}