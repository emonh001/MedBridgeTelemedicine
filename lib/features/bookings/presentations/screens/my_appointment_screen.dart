import 'package:flutter/material.dart';
import '../widgets/scheduled_item.dart';
import '../widgets/info_tile.dart';

class MyAppointmentsScreen extends StatelessWidget {
  const MyAppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFF),
      appBar: AppBar(title: const Text("My Appointments")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ScheduledItem(
            title: "Dental Checkup",
            time: "10:30 AM",
          ),
          SizedBox(height: 10),
          ScheduledItem(
            title: "Heart Specialist",
            time: "12:00 PM",
          ),
          SizedBox(height: 20),
          InfoTile(
            label: "Status",
            value: "Confirmed",
          ),
        ],
      ),
    );
  }
}