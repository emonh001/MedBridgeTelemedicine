// appointment_tile.dart
import 'package:flutter/material.dart';

class AppointmentTile extends StatelessWidget {
  final String time, period, name, subtitle;
  final Color color;

  const AppointmentTile({
    super.key,
    required this.time,
    required this.period,
    required this.name,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Text(time,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(period,
                    style: const TextStyle(fontSize: 10)),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(subtitle,
                    style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
          const Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}