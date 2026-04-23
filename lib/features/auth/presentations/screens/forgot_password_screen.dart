import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/routes/route_names.dart';
import 'package:medbridge_telemedicine/features/auth/data/models/validator.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/widgets/sign-up-textfield.dart';
import 'package:medbridge_telemedicine/features/common/presentations/widgets/primary_action_button.dart';

import '../widgets/back_button_widget.dart';
import '../widgets/forgot_password_help_card.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _emailTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FB),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  BackButtonWidget(),

                  const SizedBox(height: 30),


                  const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  const SizedBox(height: 10),


                  const Text(
                    "Enter your email to receive a reset link. We'll help you get back to your sanctuary.",
                    style: TextStyle(
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 30),



                  SignUpTextField(
                      label: 'Email Address',
                      hint: 'john@gmail.com',
                      iconData: Icons.email,
                      textEditingController: _emailTEController,
                    validator: Validators.email,
                  ),

                  const SizedBox(height: 30),


                  SizedBox(
                      width: double.infinity,
                      child: PrimaryActionButton(text: 'Send OTP', onTap: (){
                        context.push(RouteNames.verifyOtp);
                      })),


                  const SizedBox(height: 60),


                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Remember your password? ",
                        style: const TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                            text: "Log In",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pop(context);
                              },
                          )
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 80),

                  /// 🔹 Help Card
                  ForgotPasswordHelpCard()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



