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
          childAspectRatio: 1.9,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: const [
              VitalCard(
                "118/75",
                "BP (mmHg)",
                "Normal",
                icon: Icons.monitor_heart,
                iconColor: Colors.blue,
              ),
              VitalCard(
                "72",
                "Pulse (BPM)",
                "Stable",
                icon: Icons.favorite,
                iconColor: Colors.red,
              ),
              VitalCard(
                "99.8°",
                "Temp (°F)",
                "Elevated",
                icon: Icons.thermostat,
                iconColor: Colors.orange,
              ),
            ],
        ),
      ],
    );
  }
}

class VitalCard extends StatelessWidget {
  final String value, label, status;
  final IconData icon;
  final Color iconColor;

  const VitalCard(
      this.value,
      this.label,
      this.status, {
        super.key,
        required this.icon,
        required this.iconColor,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white, // better contrast
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              Icon(icon, size: 16, color: iconColor),
              const SizedBox(width: 6),

              Expanded(
                child: Text(
                  status,
                  style: TextStyle(
                    fontSize: 10,
                    color: iconColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 2),

          // 🏷 LABEL
          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}