import 'package:flutter/material.dart';

class CaseDetailsScreen extends StatelessWidget {
  const CaseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Case Details")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(radius: 30, child: Icon(Icons.person)),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Elena Richardson",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("Female • 23 years"),
                  ],
                )
              ],
            ),

            SizedBox(height: 20),

            Text("Current Vitals",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                vitalItem("BP", "118/75"),
                vitalItem("Resp", "22"),
                vitalItem("Temp", "99.8"),
                vitalItem("Oxygen", "98%"),
              ],
            ),

            SizedBox(height: 20),

            Text("Reported Symptoms",
                style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(title: Text("• Headache")),
            ListTile(title: Text("• Fever")),
            ListTile(title: Text("• Fatigue")),

            SizedBox(height: 20),

            Text("Medical Reports & Scans",
                style: TextStyle(fontWeight: FontWeight.bold)),

            ListTile(
              leading: Icon(Icons.picture_as_pdf),
              title: Text("MRI Scan"),
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text("X-Ray"),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: Text("Download Reports"),
            )
          ],
        ),
      ),
    );
  }

  Widget vitalItem(String title, String value) {
    return Column(
      children: [
        Text(value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Text(title),
      ],
    );
  }
}