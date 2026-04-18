import 'package:flutter/material.dart';

import '../../common/models/case_model.dart';
import '../data/models/report_model.dart';
import '../widgets/action_button.dart';
import '../widgets/case_details_appbar.dart';
import '../widgets/paitent_header_card.dart';
import '../widgets/report_sections.dart';
import '../widgets/symtoms_sections.dart';
import '../widgets/vitals_grid.dart';


class CaseDetailScreen extends StatelessWidget {
  final CaseModel caseData;

  const CaseDetailScreen({super.key, required this.caseData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const CaseDetailAppBar(),
                    const SizedBox(height: 10),
                    PatientHeaderCard(caseData: caseData),
                    const SizedBox(height: 16),
                    const VitalsGrid(),
                    const SizedBox(height: 16),
                    SymptomsSection(caseData: caseData),
                    const SizedBox(height: 16),
                    ReportSections(
                      reports: [
                        ReportModel(
                          name: "Blood_Report.pdf",
                          url: "https://example.com/blood.pdf",
                          size: "2.3 MB",
                        ),
                        ReportModel(
                          name: "MRI_Scan.jpg",
                          url: "https://example.com/mri.jpg",
                          size: "14.8 MB",
                        ),
                        ReportModel(
                          name: "Prescription.pdf",
                          url: "https://example.com/prescription.pdf",
                          size: "1.1 MB",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const ActionButtons(),
          ],
        ),
      ),
    );
  }
}