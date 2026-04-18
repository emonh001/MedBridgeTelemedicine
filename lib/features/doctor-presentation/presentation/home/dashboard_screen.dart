import 'package:flutter/material.dart';
import 'package:medbridge_telemedicine/features/doctor-presentation/presentation/home/widget/action_card.dart';
import 'package:medbridge_telemedicine/features/doctor-presentation/presentation/home/widget/apointment_section.dart';
import 'package:medbridge_telemedicine/features/doctor-presentation/presentation/home/widget/header_section.dart';
import 'package:medbridge_telemedicine/features/doctor-presentation/presentation/home/widget/next_consultation_card.dart';
import 'package:medbridge_telemedicine/features/doctor-presentation/presentation/home/widget/weekly_overview.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: const [
              HeaderSection(),
              SizedBox(height: 16),
              ActionRequiredCard(),
              SizedBox(height: 16),
              NextConsultationCard(),
              SizedBox(height: 20),
              AppointmentsSection(),
              SizedBox(height: 16),
              WeeklyOverviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}