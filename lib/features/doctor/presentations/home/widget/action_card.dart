// action_required_card.dart
import 'package:flutter/material.dart';

class ActionRequiredCard extends StatelessWidget {
  const ActionRequiredCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF1E5BB8),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.description_outlined, color: Colors.white),
              const Spacer(),
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "ACTION REQUIRED",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              )
            ],
          ),
          const SizedBox(height: 18),
          const Text("12",
              style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          const Text("Pending Case Requests",
              style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 10),
          const Text("Quick View →",
              style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}