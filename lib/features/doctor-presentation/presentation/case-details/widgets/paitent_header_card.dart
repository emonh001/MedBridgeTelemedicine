import 'package:flutter/material.dart';
import '../../common/models/case_model.dart';

class PatientHeaderCard extends StatelessWidget {
  final CaseModel caseData;

  const PatientHeaderCard({super.key, required this.caseData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F3F6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(radius: 30),
              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(caseData.name,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),

                    const SizedBox(height: 4),

                    Text(caseData.age,
                        style: const TextStyle(color: Colors.grey)),
                  ],
                ),
              ),

              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "ACTIVE CASE",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),

          const SizedBox(height: 14),

          Row(
            children: const [
              Expanded(child: InfoItem("BLOOD GROUP", "A+ Positive")),
              Expanded(child: InfoItem("REFERRED BY", "Dr. James Wilson")),
            ],
          ),

          const SizedBox(height: 10),

          Row(
            children: const [
              Expanded(child: InfoItem("ADMISSION", "Oct 24, 2023")),
              Expanded(
                  child: InfoItem("PRIORITY", "High", isRed: true)),
            ],
          ),
        ],
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final String title;
  final String value;
  final bool isRed;

  const InfoItem(this.title, this.value,
      {this.isRed = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 10, color: Colors.grey)),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isRed ? Colors.red : Colors.black,
          ),
        ),
      ],
    );
  }
}