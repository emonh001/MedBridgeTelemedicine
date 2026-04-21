import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/routes/route_names.dart';
import '../widgets/booking/booking_form_fields.dart';
import '../widgets/booking/booking_summary_card.dart';
import '../widgets/booking/payment_option_tile.dart';
import '../widgets/common/med_bridge_app_bar.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  String _selectedPayment = 'insurance';
  String _selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFF),
      appBar: const MedBridgeAppBar(showLeading: true, showProfileAvatar: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Booking Summary',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1A1A2E),
              ),
            ),
            const SizedBox(height: 16),
            const BookingSummaryCard(),
            const SizedBox(height: 20),

            const Text(
              'Patient Information',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1A1A2E),
              ),
            ),
            const SizedBox(height: 12),

            const BookingInputField(label: 'FULL NAME', hint: 'e.g. John Doe'),
            const SizedBox(height: 12),

            Row(
              children: [
                const Expanded(
                  child: BookingInputField(label: 'AGE', hint: '26'),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: BookingDropdownField(
                    label: 'GENDER',
                    value: _selectedGender,
                    items: const ['Male', 'Female', 'Other'],
                    onChanged: (val) => setState(() => _selectedGender = val!),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            const BookingTextAreaField(
              label: 'REASON FOR VISIT',
              hint: 'Describe your symptoms or reason for the appointment...',
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Payment Method',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1A1A2E),
                  ),
                ),
                Text(
                  'Fees: \$120.00',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1A6BFF),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            PaymentOptionTile(
              icon: Icons.shield_outlined,
              title: 'Insurance',
              subtitle: 'Provider Coverage',
              isSelected: _selectedPayment == 'insurance',
              onTap: () => setState(() => _selectedPayment = 'insurance'),
            ),
            const SizedBox(height: 8),
            PaymentOptionTile(
              icon: Icons.credit_card,
              title: 'Credit Card',
              subtitle: 'Instant Payment',
              isSelected: _selectedPayment == 'credit',
              onTap: () => setState(() => _selectedPayment = 'credit'),
            ),
            const SizedBox(height: 8),
            PaymentOptionTile(
              icon: Icons.payments_outlined,
              title: 'Cash',
              subtitle: 'Pay at Hospital',
              isSelected: _selectedPayment == 'cash',
              onTap: () => setState(() => _selectedPayment = 'cash'),
            ),
            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  _confirmBooking();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1A6BFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 0,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Confirm & Pay',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                "By confirming, you agree to MedBridge's Terms of Service\nand Privacy Policy.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11, color: Color(0xFFADB5BD)),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Future<void> _confirmBooking() async {
    context.pushNamed(RouteNames.appointmentConfirmation);
  }
}
