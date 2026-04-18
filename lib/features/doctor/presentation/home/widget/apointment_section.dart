// appointments_section.dart
import 'package:flutter/material.dart';
import 'appointment_tile.dart';

class AppointmentsSection extends StatelessWidget {
  const AppointmentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text("Today's Appointments",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(),
            Text("View Schedule",
                style: TextStyle(color: Colors.blue.shade600))
          ],
        ),
        const SizedBox(height: 12),

        const AppointmentTile(
          time: "09:30",
          period: "AM",
          name: "Elena Richardson",
          subtitle: "Post-op follow-up • Office Visit",
          color: Color(0xFFE6F0FF),
        ),
        const AppointmentTile(
          time: "10:15",
          period: "AM",
          name: "Marcus Thorne",
          subtitle: "Video Consult • Cardiac Rehab",
          color: Color(0xFFE7F8EE),
        ),
        const AppointmentTile(
          time: "11:00",
          period: "AM",
          name: "James Wilson",
          subtitle: "Initial Assess",
          color: Color(0xFFE6F0FF),
        ),
        const AppointmentTile(
          time: "01:45",
          period: "PM",
          name: "Sofia Martinez",
          subtitle: "Lab Results Review • Remote",
          color: Color(0xFFE6F0FF),
        ),
      ],
    );
  }
}