import 'package:flutter/material.dart';
import 'package:medbridge_telemedicine/features/doctor/presentations/incoming-case/widgets/case_list.dart';
import 'package:medbridge_telemedicine/features/doctor/presentations/incoming-case/widgets/case_sammary_card.dart';
import 'package:medbridge_telemedicine/features/doctor/presentations/incoming-case/widgets/header_section_booking.dart';

class IncomingCaseScreen extends StatefulWidget {
  const IncomingCaseScreen({super.key});

  @override
  State<IncomingCaseScreen> createState() => _IncomingCaseScreenState();
}

class _IncomingCaseScreenState extends State<IncomingCaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
            HeaderSectionBooking(),
            Row(
              children: [
                CaseSummaryCard(
                    title: '12',
                    subtitle: 'Pending',
                    color: Color(0xFF2F6FED),
                    iconData: Icons.calendar_month),

                const SizedBox(width: 10,),

                CaseSummaryCard(
                    title: '08',
                    subtitle: 'Accepted Today',
                    color: Colors.grey,
                    iconData: Icons.check_circle,
                    iconColor: Colors.lightGreen,
                )
              ],
            ),
              SizedBox(height: 30,),

              const CaseList(
                name: "Sarah Jenkins",
                age: "28 years • Female",
                tag: "URGENT",
                tagColor: Colors.red,
                symptoms:
                "Persistent chest pressure, shortness of breath for 2 hours. No prior history.",
                time: "4M AGO",
              ),

              const CaseList(
                name: "Robert Chen",
                age: "64 years • Male",
                tag: "CONSULTATION",
                tagColor: Colors.green,
                symptoms:
                "Routine diabetes follow-up. Glucose levels trending high in mornings.",
                time: "22M AGO",
              ),

              const CaseList(
                name: "Emma Wilson",
                age: "08 years • Female",
                tag: "PEDIATRICS",
                tagColor: Colors.orange,
                symptoms:
                "Mild skin rash on arms, possibly allergic reaction to laundry soap.",
                time: "1H AGO",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
