import 'package:flutter/material.dart';
import '../../../data/models/report_model.dart';
import 'report_tile.dart';

class ReportSections extends StatefulWidget {
  final List<ReportModel> reports;

  const ReportSections({
    super.key,
    required this.reports,
  });

  @override
  State<ReportSections> createState() => _ReportSectionsState();
}

class _ReportSectionsState extends State<ReportSections> {
  bool showAll = false;

  @override
  Widget build(BuildContext context) {

    final displayedReports =
    showAll ? widget.reports : widget.reports.take(3).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              "Medical Reports & Scans",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),


            GestureDetector(
              onTap: () {
                setState(() {
                  showAll = !showAll;
                });
              },
              child: Text(
                showAll ? "Show Less" : "View All Files",
                style: TextStyle(
                  color: Colors.blue.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),

        ...displayedReports.map<Widget>(
              (report) => ReportTile(
            report: report,
            onDownload: () {
              debugPrint("Download: ${report.url}");
            },
          ),
        ),
      ],
    );
  }
}