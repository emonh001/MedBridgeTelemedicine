import 'package:flutter/material.dart';
import 'package:medbridge_telemedicine/features/bookings/presentation/data/models/case_status_model.dart';
import 'package:medbridge_telemedicine/features/bookings/presentation/screens/case_status_tracking_screen.dart';

class CaseListScreen extends StatelessWidget {
  CaseListScreen({super.key});

  List<CaseStatusModel> caseStatusList = [
    CaseStatusModel(name: 'Amara Okafor', id: '#MB-99210', caseStatus: 'DIAGNOSED', caseDate: 'Oct 12, 2023'),
    CaseStatusModel(name: 'Liam Henderson', id: '#MB-88432', caseStatus: 'UNDER REVIEW', caseDate: 'Oct 14, 2023'),
    CaseStatusModel(name: 'Elena Rodriguez', id: '#MB-77219', caseStatus: 'SUBMITTED', caseDate: 'Oct 15, 2023'),
    CaseStatusModel(name: 'Chen Wei', id: '#MB-99381', caseStatus: 'DIAGNOSED', caseDate: 'Oct 11, 2023'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              //HeaderSection
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(radius: 18),
                      const SizedBox(width: 10),
                      const Text(
                        "MedSanctuary",
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Icon(Icons.notifications_none, color: Colors.grey.shade700),
                    ],
                  ),
                  const SizedBox(height: 14),
                  const Text("Patient Case Directory", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  Text(
                    "Manage and track medical submissions across your regional facility network.",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.withAlpha(50),
                  filled: true,
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: 'Search by patient name or ID...',
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(24)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(24)),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(color: Colors.grey.withAlpha(50), borderRadius: BorderRadius.circular(24)),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Icon(Icons.filter_list, color: Colors.blue),
                    ),
                    const Text("Filters", style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E5BB8), foregroundColor: Colors.white),
                    child: Text("ALL CASES"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade200, foregroundColor: Colors.grey.shade700),
                    child: Text("SUBMITTED"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade200, foregroundColor: Colors.grey.shade700),
                    child: Text("UNDER REVIEW"),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: caseStatusList.length,
                itemBuilder: (context, index) {
                  return CaseStatusCard(caseStatusModel: caseStatusList[index]);
                },
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(color: const Color(0xFF1E5BB8), borderRadius: BorderRadius.circular(18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Need Specialist Input?', style: TextStyle(fontSize: 25, color: Colors.white)),
                    const Text(
                      'Escalate complex cases directly to our global network of specialized physicians for rapid diagnosis.',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 188.0,
                      height: 40,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(color: const Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        mainAxisAlignment: .center,
                        children: [Text('Start Consultation', style: TextStyle(color: Color(0xFF0057C1)))],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 175.0,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(16)),
                      child: Icon(Icons.perm_contact_cal_rounded),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class CaseStatusCard extends StatelessWidget {
  const CaseStatusCard({super.key, required this.caseStatusModel});
  final CaseStatusModel caseStatusModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(radius: 24, child: Icon(Icons.person_outline_sharp, color: Colors.blue)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(caseStatusModel.name, style: TextStyle(fontWeight: FontWeight.w600)),
                  Text('ID: ${caseStatusModel.id}', style: TextStyle(color: Colors.grey)),
                ],
              ),
              Container(
                height: 25, //background: #D8E2FF;background: #E0E3E5;
                padding: EdgeInsets.symmetric(horizontal: 10),
                //decoration: BoxDecoration(color: const Color(0xFF91F78E), borderRadius: BorderRadius.circular(16)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: caseStatusModel.caseStatus == 'UNDER REVIEW'
                      ? Color(0xFFD8E2FF)
                      : caseStatusModel.caseStatus == 'SUBMITTED'
                      ? Colors.grey
                      : Color(0xFF91F78E),
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [Text(caseStatusModel.caseStatus, style: TextStyle(color: Color(0xFF00731E)))],
                ),
              ),
            ],
          ),
          SizedBox(height: 35.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('SUBMITTED DATE', style: TextStyle(color: Colors.grey)),
                  Text(caseStatusModel.caseDate, style: TextStyle(fontWeight: FontWeight.w600)),
                ],
              ),
              IconButton.filled(
                color: Color(0xFF2570E5),
                icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => CaseStatusTrackingScreen()));
                },
              ),
            ],
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
