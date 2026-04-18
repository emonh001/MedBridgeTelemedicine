// weekly_overview_card.dart
import 'package:flutter/material.dart';

class WeeklyOverviewCard extends StatelessWidget {
  const WeeklyOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          StatItem("48", "Patients"),
          StatItem("92%", "Rate"),
          StatItem("12h", "Active"),
        ],
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final String value, label;

  const StatItem(this.value, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}