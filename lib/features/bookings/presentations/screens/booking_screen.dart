import 'package:flutter/material.dart';

import '../widgets/doctor_card.dart';
import '../widgets/input_field.dart';
import 'appointment_confirmation.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  String gender = 'Male';
  String payment = 'Insurance';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFF),
      appBar: AppBar(title: const Text("Book Appointment")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const DoctorCard(
              name: "Dr. James Wilson",
              specialty: "Cardiologist",
            ),

            const SizedBox(height: 16),

            const InputField(
              label: "FULL NAME",
              hint: "John Doe",
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                const Expanded(
                  child: InputField(
                    label: "AGE",
                    hint: "25",
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: DropdownField(
                    value: gender,
                    items: const ["Male", "Female"],
                    onChanged: (v) => setState(() => gender = v!),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            const InputField(
              label: "REASON",
              hint: "Headache, fever...",
            ),

            const SizedBox(height: 20),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Payment Method",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            PaymentOption(
              title: "Insurance",
              selected: payment == "Insurance",
              onTap: () => setState(() => payment = "Insurance"),
            ),
            PaymentOption(
              title: "Card",
              selected: payment == "Card",
              onTap: () => setState(() => payment = "Card"),
            ),
            PaymentOption(
              title: "Cash",
              selected: payment == "Cash",
              onTap: () => setState(() => payment = "Cash"),
            ),

            const SizedBox(height: 20),

            PrimaryButton(
              text: "Confirm Booking",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AppointmentConfirmationScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}