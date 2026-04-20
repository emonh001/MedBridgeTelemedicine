import 'package:flutter/material.dart';

import '../widgets/qr_painter.dart';


class AppointmentConfirmationScreen extends StatelessWidget {
  const AppointmentConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFF),
      appBar: AppBar(title: const Text("Confirmed")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle,
                color: Colors.green, size: 80),

            const SizedBox(height: 12),

            const Text(
              "Appointment Confirmed!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: 120,
              height: 120,
              child: CustomPaint(
                painter: QRPainter(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}