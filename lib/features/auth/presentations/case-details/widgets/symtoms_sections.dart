import '../../doctor-screen/common/models/case_model.dart';

import 'package:flutter/material.dart';
class SymptomsSection extends StatelessWidget {
  final CaseModel caseData;

  const SymptomsSection({super.key, required this.caseData});

  @override
  Widget build(BuildContext context) {
    final symptoms = [
      "Persistent Migraine",
      "Light Sensitivity",
      "Fatigue",
      "Nausea"
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F3F6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Reported Symptoms",
              style: TextStyle(fontWeight: FontWeight.bold)),

          const SizedBox(height: 10),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: symptoms
                .map((e) => Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(e,
                  style:
                  const TextStyle(fontSize: 12)),
            ))
                .toList(),
          ),

          const SizedBox(height: 12),

          Text(
            caseData.symptoms,
            style:
            const TextStyle(fontSize: 12, color: Colors.grey),
          )
        ],
      ),
    );
  }
}