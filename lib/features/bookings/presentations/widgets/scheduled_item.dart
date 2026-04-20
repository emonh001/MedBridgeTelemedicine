import 'package:flutter/material.dart';

class ScheduledItem extends StatelessWidget {
  final String title;
  final String time;

  const ScheduledItem({
    super.key,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.white,
      child: Row(
        children: [
          const Icon(Icons.calendar_today),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(time),
            ],
          )
        ],
      ),
    );
  }
}