// header_section.dart
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

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
        const Text(
          "Good morning, Dr. Sarah Miller",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        const Text(
          "Your sanctuary for patient care is ready today.",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}