// next_consultation_card.dart
import 'package:flutter/material.dart';

class NextConsultationCard extends StatelessWidget {
  const NextConsultationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: const [
          Icon(Icons.access_time, color: Colors.green),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("NEXT UP IN 15M", style: TextStyle(color: Colors.grey)),
              SizedBox(height: 4),
              Text("Digital Consultation",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Patient: Marcus Thorne",
                  style: TextStyle(color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }
}