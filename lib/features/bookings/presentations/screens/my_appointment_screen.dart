import 'package:flutter/material.dart';

import '../widgets/appointments/appointments_header.dart';
import '../widgets/appointments/next_appointment_card.dart';
import '../widgets/appointments/recently_completed_card.dart';
import '../widgets/appointments/scheduled_item_card.dart';
import '../widgets/common/med_bridge_app_bar.dart';

class MyAppointmentsScreen extends StatefulWidget {
  const MyAppointmentsScreen({super.key});

  @override
  State<MyAppointmentsScreen> createState() => _MyAppointmentsScreenState();
}

class _MyAppointmentsScreenState extends State<MyAppointmentsScreen> {
  bool _showUpcoming = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFF),
      appBar: const MedBridgeAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppointmentsHeader(
            showUpcoming: _showUpcoming,
            onUpcomingTap: () => setState(() => _showUpcoming = true),
            onPastTap: () => setState(() => _showUpcoming = false),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Next Appointment',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1A1A2E),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF9500).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text(
                          'PRIORITY',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFF9500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const NextAppointmentCard(),
                  const SizedBox(height: 24),
                  const Text(
                    'More Scheduled',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const ScheduledItemCard(
                    icon: Icons.directions_run_outlined,
                    title: 'Physical Therapy',
                    time: 'Oct 28 - 07:15 PM',
                    color: Color(0xFF9B59B6),
                  ),
                  const SizedBox(height: 8),
                  const ScheduledItemCard(
                    icon: Icons.psychology_outlined,
                    title: 'Counseling Session',
                    time: 'Nov 02 - 09:00 AM',
                    color: Color(0xFF1A6BFF),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Recently Completed',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const RecentlyCompletedCard(),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
