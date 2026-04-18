import 'package:flutter/material.dart';
import '../../../data/models/report_model.dart';

class ReportTile extends StatelessWidget {
  final ReportModel report;
  final VoidCallback? onDownload;

  const ReportTile({
    super.key,
    required this.report,
    this.onDownload,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F3F6),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          // 📄 FILE ICON BASED ON TYPE
          Icon(
            report.isPdf ? Icons.picture_as_pdf : Icons.image,
            color: report.isPdf ? Colors.red : Colors.blue,
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  report.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  report.size,
                  style: const TextStyle(
                      fontSize: 10, color: Colors.grey),
                ),
              ],
            ),
          ),


          IconButton(
            onPressed: onDownload ??
                    () {
                  // future: implement download
                  debugPrint("Downloading ${report.name}");
                },
            icon: const Icon(Icons.download),
          ),
        ],
      ),
    );
  }
}