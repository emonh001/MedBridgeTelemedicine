import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/constants/assets_paths.dart';
import 'package:medbridge_telemedicine/app/routes/route_names.dart';
import 'package:medbridge_telemedicine/features/common/presentations/widgets/primary_action_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../common/presentations/widgets/custom_app_bar.dart';


class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key,this.email});

  final String? email;
  static const String name = '/verify-otp';

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final TextEditingController _otpTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _otpTEController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: CustomAppBar(title: 'MedBridge', icon: Icons.health_and_safety, onPressed: (){}),
      backgroundColor: const Color(0xFFF7F9FB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 20),


                  Center(
                    child: Image.asset(AssetsPaths.verifyOtpLogo),
                  ),
                  
                  Text(
                    'Verify OTP',
                    style: textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "We've sent a 4-digit security code to \nyour registered${widget.email ?? " email"}",
                    textAlign: TextAlign.center,
                    style: textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // OTP Field
                  PinCodeTextField(
                    length: 4,
                    controller: _otpTEController,
                    appContext: context,
                    keyboardType: TextInputType.number,
                    animationType: AnimationType.fade,
                    animationDuration: const Duration(milliseconds: 300),

                    validator: (value) {
                      if (value == null || value.length < 4) {
                        return "Enter complete OTP";
                      }
                      return null;
                    },

                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(12),
                      fieldHeight: 60,
                      fieldWidth: 60,
                      activeFillColor: const Color(0xFFEDEFF2),
                      selectedFillColor: const Color(0xFFEDEFF2),
                      inactiveFillColor: const Color(0xFFEDEFF2),
                      activeColor: Colors.transparent,
                      selectedColor: Colors.blue,
                      inactiveColor: Colors.transparent,
                    ),

                    enableActiveFill: true,
                  ),

                  const SizedBox(height: 40),

                  // 🔹 Verify Button
                  SizedBox(
                    width: double.infinity,
                    child: PrimaryActionButton(text: "Verify", onTap: (){
                      context.go(RouteNames.resetPassword);
                    }),
                  ),

                  const SizedBox(height: 20),

                  // Resend
                  const Text(
                    "Didn't receive the code?",
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 5),

                  GestureDetector(
                    onTap: _onTapResend,
                    child: const Text(
                      "Resend Code",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapVerifyButton() {
    if (_formKey.currentState!.validate()) {
      _verifyOtp();
    }
  }

  Future<void> _verifyOtp() async {
    String otp = _otpTEController.text;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Verifying OTP: $otp')),
    );
  }

  void _onTapResend() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('OTP Resent')),
    );
  }
}
