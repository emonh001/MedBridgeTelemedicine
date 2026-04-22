import 'package:flutter/material.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/upload_reports/widgets/document_item.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/upload_reports/widgets/recent_header.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/upload_reports/widgets/snap_photo_card.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/new_patient_case/widgets/submit_button.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/upload_reports/widgets/upload_file_card.dart';

class UploadReportScreen extends StatefulWidget {
  const UploadReportScreen({super.key});

  @override
  State<UploadReportScreen> createState() => _UploadReportScreenState();
}

class _UploadReportScreenState extends State<UploadReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Upload Reports')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Text(
                "Upload Reports",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                'Securely store and share your medical documentation.',
              ),
          
              const SizedBox(height: 16),
              SnapPhotoCard(),
              const SizedBox(height: 16),
              UploadFileCard(),
              const SizedBox(height: 16),
              RecentHeader(),
              const SizedBox(height: 16),
              DocumentItem(icon: Icons.picture_as_pdf, color: Colors.red, title: 'Blood_Report.pdf', subtitle: "Apr 18, 2026 • 1.2 MB"),
              DocumentItem(icon: Icons.image, color: Colors.blue, title: 'X-Ray.jpg', subtitle: 'Apr 18, 2026 • 4.2 MB'),
              DocumentItem(icon: Icons.insert_drive_file, color: Colors.green, title: 'Prescription_Card.png', subtitle: 'Apr 18, 2026 • 365 kb'),
              const SizedBox(height: 16),
              SubmitButton(text: 'Create Patient Case → ',onPressed: (){}),

            ],
          ),
        ),
      ),
    );
  }
}
