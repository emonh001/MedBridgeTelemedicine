import 'package:flutter/material.dart';
import 'package:medbridge_telemedicine/features/bookings/presentation/screens/case_details_screen.dart';

class CaseStatusTrackingScreen extends StatelessWidget {
  const CaseStatusTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Case Tracking")),
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(radius: 18),
            const SizedBox(width: 10),
            const Text("MedSanctuary", style: TextStyle(color: Colors.blue)),
            const Spacer(),
            Icon(Icons.notifications_none, color: Colors.grey.shade700),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 14),
                  const Text("Case Tracking", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  Text("Case ID: #MS-88291 • Podiatry", style: TextStyle(color: Colors.grey.shade600)),
                ],
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  stepCircle("1", true),
                  Expanded(child: Divider()),
                  stepCircle("2", true),
                  Expanded(child: Divider()),
                  stepCircle("3", true),
                  Expanded(child: Divider()),
                  stepCircle("4", false),
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(color: const Color(0xFF1E5BB8), borderRadius: BorderRadius.circular(18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.indigoAccent,
                          child: Icon(Icons.medical_services, color: Colors.white),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(20)),
                          child: const Text("ACTIVE STATE", style: TextStyle(color: Colors.white, fontSize: 11)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Text("Diagnosis Ready", style: TextStyle(color: Colors.white, fontSize: 18)),
                    SizedBox(height: 10),
                    Text("Patient diagnosis summary will appear here.", style: TextStyle(color: Colors.white70)),
                    SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => CaseDetailsScreen()));
                      }, //background: #0057C1;
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('View Assessment Resul', style: TextStyle(color: Color(0xFF0057C1))),
                          Icon(Icons.arrow_forward, color: Color(0xFF0057C1)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.person)),
                title: Text("Dr. Julian Romeo"),
                subtitle: Text("Doctor assigned"),
              ),

              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green),
                title: Text("Case Completed"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget stepCircle(String text, bool active) {
    return CircleAvatar(
      backgroundColor: active ? Colors.blue : Colors.grey,
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
