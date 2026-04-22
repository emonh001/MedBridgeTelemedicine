import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'case_details_screen.dart';


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
                  stepCircleWithIcon(Icons.check, true),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Divider(color: Color(0xFF0057C1)),
                    ),
                  ),
                  stepCircleWithIcon(Icons.person, true),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Divider(color: Color(0xFF0057C1)),
                    ),
                  ),
                  stepCircleWithIcon(Icons.medical_services_outlined, true),
                  //stepCircleWithIcon(FaIcon(FontAwesomeIcons.stethoscope) as IconData, true),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Divider(),
                  )),
                  stepCircleWithIcon(Icons.arrow_forward_ios_outlined, false),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Submitted', style: TextStyle(color: Color(0xFF0057C1))),
                  Text('Assigned', style: TextStyle(color: Color(0xFF0057C1))),
                  Text('Diagnosis', style: TextStyle(color: Color(0xFF0057C1))),
                  Text('Treatment', style: TextStyle(color: Colors.grey)),
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
                          child: FaIcon(FontAwesomeIcons.stethoscope, color: Colors.white),
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
                    Text("Dr. Julian Thorne has completed your initial assessment. Review your diagnosis detail below.", style: TextStyle(color: Colors.white70)),
                    SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => CaseDetailsScreen()));
                      }, //background: #0057C1;
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('View Assessment Resul', style: TextStyle(color: Color(0xFF0057C1))),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(Icons.arrow_forward, color: Color(0xFF0057C1)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(color: Color(0xFFF2F4F6), borderRadius: BorderRadius.circular(24)),
                  child: Row(
                    children: [
                     SizedBox(
                       height: 56.0,
                       width: 56.0,
                       child: Icon(Icons.person),
                     ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('COMPLETED • 09:12 AM', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: Color(0xFF535F56)),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(size: 12,Icons.check_circle, color: Color(0xFF006E1C)),
                                ),
                              ],
                            ),
                            Text('Dr. Julian Thorne', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                            Text('Senior Orthopedic Specialist', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(color: Color(0xFFF2F4F6), borderRadius: BorderRadius.circular(24)),
                child: Row(
                  children: [
                    SizedBox(
                      height: 56.0,
                      width: 56.0,
                      child: Icon(Icons.description_outlined),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Case Files Uploaded', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                          Text('3 medical images, 1 history PDF', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Icon(size: 12,Icons.check_circle, color: Color(0xFF006E1C)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(color: Color(0xFFF2F4F6), borderRadius: BorderRadius.circular(24)),
                child: Row(
                  children: [
                    SizedBox(
                      height: 56.0,
                      width: 56.0,
                      child: FaIcon(FontAwesomeIcons.capsules, color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Treatment Plan', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey),),
                          Text('Estimated wait: 2-4 hours', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {}, //background: #0057C1;
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(Icons.wifi_calling_3_outlined, color: Color(0xFF0057C1)),
                    ),
                    Text('Need help with this case?', style: TextStyle(color: Color(0xFF0057C1))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget stepCircle(String text, bool active) {
    return CircleAvatar(
      backgroundColor: active ? const Color(0xFF0057C1) : Colors.grey,
      //child: Text(text, style: TextStyle(color: Colors.white)),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
  Widget stepCircleWithIcon(IconData iconData, bool active) {
    return CircleAvatar(
      backgroundColor: active ? const Color(0xFF0057C1) : Colors.grey,
      child: Icon(iconData, color: Colors.white),
    );
  }
}
