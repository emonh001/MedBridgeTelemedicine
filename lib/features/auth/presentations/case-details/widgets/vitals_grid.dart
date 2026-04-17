import 'package:flutter/material.dart';
class VitalsGrid extends StatelessWidget {
  const VitalsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Text("Current Vitals",
                style: TextStyle(fontWeight: FontWeight.bold)),
            Spacer(),
            Text("Last updated: 10 mins ago",
                style: TextStyle(fontSize: 10, color: Colors.grey)),
          ],
        ),

        const SizedBox(height: 12),

        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 2.2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: const [
            VitalCard("118/75", "BP (mmHg)", "Normal"),
            VitalCard("72", "Pulse (BPM)", "Stable"),
            VitalCard("99.8°", "Temp (°F)", "Elevated"),
          ],
        ),
      ],
    );
  }
}

class VitalCard extends StatelessWidget {
  final String value, label, status;

  const VitalCard(this.value, this.label, this.status, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F3F6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(status,
              style: const TextStyle(
                  fontSize: 10, color: Colors.green)),

          const Spacer(),

          Text(value,
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold)),

          Text(label,
              style: const TextStyle(fontSize: 10, color: Colors.grey)),
        ],
      ),
    );
  }
}