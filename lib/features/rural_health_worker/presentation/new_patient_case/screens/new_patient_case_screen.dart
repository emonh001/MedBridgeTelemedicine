import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/new_patient_case/widgets/attachment_box.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/new_patient_case/widgets/priority_chip.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/new_patient_case/widgets/submit_button.dart';

import '../widgets/input_field.dart';

class UploadPatientCaseScreen extends StatefulWidget {
 const UploadPatientCaseScreen({super.key});



  @override
  State<UploadPatientCaseScreen> createState() => _UploadPatientCaseScreenState();
}

class _UploadPatientCaseScreenState extends State<UploadPatientCaseScreen> {

  final TextEditingController nameTEController = TextEditingController();
  final TextEditingController symptomsController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MedSanctuary"),
        actions: [
          Icon(Icons.notifications_none)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
          crossAxisAlignment: .start,
            children: [
              Text("New Patient Case",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 6),
              const Text("Complete the details below to initiate a consultation request for a remote specialist."),
              const SizedBox(height: 20),
        
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                  InputField(
                  label: " NAME",
                  hint: " Your name",
                    controller: nameTEController,
                    icon: Icons.person,
                  ),
                    SizedBox(height: 16),
                    PriorityChip(),
                    SizedBox(height: 16),
                    InputField(label: 'SYMPTOMS SUMMARY',
                        hint: 'Describe condition...',
                      maxLines: 4,
                      controller: symptomsController,
                    ),
                    SizedBox(height: 16),
                    AttachmentBox(),
        
        
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SubmitButton(text: 'Continue', onPressed: (){context.push('/vital_input');},),


        
            ],
          ),
        ),
      ),
    );

  }
  @override
  void dispose() {
   nameTEController.dispose();
   symptomsController.dispose();
    super.dispose();
  }


}
