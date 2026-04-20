import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/new_patient_case/widgets/input_field.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/new_patient_case/widgets/submit_button.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/vital_input/widgets/vital_BP_input.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/vital_input/widgets/vital_input_card.dart';

class VitalsInputScreen extends StatefulWidget {
  const VitalsInputScreen({super.key});

  @override
  State<VitalsInputScreen> createState() => _VitalsInputScreenState();
}

class _VitalsInputScreenState extends State<VitalsInputScreen> {
  final TextEditingController _notesTEController = TextEditingController();
  final TextEditingController _pulseTEController = TextEditingController();
  final TextEditingController _oxygenTEController = TextEditingController();
  final TextEditingController _tempTEController = TextEditingController();
  final TextEditingController _respirationTEController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vital Intake')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("STEP 3 OF 4"),
              const SizedBox(height: 6),
              const Text(
                "Vitals Intake",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text('Patient Id: 12121'),

              const SizedBox(height: 16),
              VitalBPInput(
                title: 'Blood Pressure',
                tag: 'mmHg',
                icon: Icons.show_chart,
                color: Colors.blue,

              ),
              VitalInputCard(
                title: 'Pulse',
                tag: 'BPM',
                icon: Icons.favorite,
                color: Colors.red,
                value: 'Enter pulse',
                controller: _pulseTEController,
              ),
              VitalInputCard(
                title: 'Sp02',
                value: 'Enter oxygen level',
                tag: '%',
                icon: Icons.air,
                color: Colors.blue,
                controller: _oxygenTEController,
              ),
              VitalInputCard(
                title: 'Temperature',
                value: 'Enter temperature',
                tag: '°C',
                icon: Icons.thermostat,
                color: Colors.green,
                controller:_tempTEController ,
              ),
              VitalInputCard(
                title: 'Respiration',
                value: 'Enter respiration rate',
                tag: 'rpm',
                icon: Icons.wind_power,
                color: Colors.lightBlue,
                controller: _respirationTEController,
              ),

              InputField(
                label: 'Clinical Notes',
                hint: 'Observation during intake..',
                maxLines: 3,
                controller: _notesTEController,
              ),
              const SizedBox(height: 20),
              SubmitButton(
                text: 'Confirm & Sync Vitals',
                onPressed: () {
                  context.push('/upload_report');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _notesTEController.dispose();
    _pulseTEController.dispose();
    _oxygenTEController.dispose();
    _tempTEController.dispose();
    _respirationTEController.dispose();
    super.dispose();
  }
}
