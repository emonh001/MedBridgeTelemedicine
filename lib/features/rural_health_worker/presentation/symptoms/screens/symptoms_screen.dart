import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/new_patient_case/widgets/input_field.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/new_patient_case/widgets/submit_button.dart';

import '../widgets/symptoms_selector.dart';


class SymptomsScreen extends StatefulWidget {
  const SymptomsScreen({super.key});


  @override
  State<SymptomsScreen> createState() => _SymptomsScreenState();
}

class _SymptomsScreenState extends State<SymptomsScreen> {

  final TextEditingController symptomsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MedSanctuary")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("STEP 2 OF 4"),
            const SizedBox(height: 6),

            const Text(
              "What are your symptoms?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text('Please select all that apply. This helps our doctor prepare for your consultation.'),

            const SizedBox(height: 16),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                SymptomsSelector(
                  title: "Fever",
                  icon: Icons.thermostat,
                  color: Colors.red,
                ),
                SymptomsSelector(
                  title: 'Cough',
                  icon: Icons.show_chart,
                  color: Colors.green,
                ),
                SymptomsSelector(
                  title: 'Headache',
                  icon: Icons.psychology,
                  color: Colors.blue,
                ),
                SymptomsSelector(
                  title: 'Fatigue',
                  icon: Icons.battery_0_bar,
                  color: Colors.orange,
                ),
              ],
            ),

            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: SymptomsSelector(
                title: 'Nausea or Dizziness',
                icon: Icons.sick_outlined,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 16),
            InputField(
              label: 'Other symptoms or notes',
              hint: 'describe any other symptoms..',
              maxLines: 4,
              controller: symptomsController,
            ),

            const SizedBox(height: 20),
            SubmitButton(text: 'Continue', onPressed:(){ context.push("/new_case");}),
          ],
        ),
      ),
    );
  }
 @override
  void dispose() {
    symptomsController.dispose();
    super.dispose();
  }

}
