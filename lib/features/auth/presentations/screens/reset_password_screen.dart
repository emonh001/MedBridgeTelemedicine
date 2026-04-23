import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/routes/route_names.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/widgets/back_button_widget.dart';
import 'package:medbridge_telemedicine/features/common/presentations/widgets/primary_action_button.dart';

import '../../data/models/validator.dart';
import '../widgets/PasswordField.dart';


class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _confirmPasswordTEController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool obscurePassword = true;
  bool obscureConfirm = true;
  bool hasMinLength = false;
  bool hasSpecialChar = false;
  bool hasUppercase = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FB),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 400),
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
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    BackButtonWidget(),

                    const SizedBox(height: 20),

                    /// Top Icon
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(Icons.lock_reset, color: Colors.white),
                    ),

                    const SizedBox(height: 20),

                    /// 🔹 Title
                    const Text(
                      "Reset Password",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      "Create a new, strong password for your account",
                      style: TextStyle(color: Colors.grey),
                    ),

                    const SizedBox(height: 30),

                    ///  New Password
                    PasswordField(
                        controller: _passwordTEController,
                        hint: "",
                        label: "New Password",
                        obscure: obscurePassword,
                        onToggle: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                        icon: Icons.key,
                        onChanged: (value) {
                          setState(() {
                            hasMinLength = value.length >= 8;
                            hasSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value);
                            hasUppercase = RegExp(r'[A-Z]').hasMatch(value);
                          });
                        },
                        validator: Validators.password),

                    const SizedBox(height: 20),

                    ///  Confirm Password
                    PasswordField(
                      controller: _confirmPasswordTEController,
                      hint: "",
                      label: "Confirm Password",
                      obscure: obscureConfirm,
                      onToggle: () {
                        setState(() {
                          obscureConfirm = !obscureConfirm;
                        });
                      },
                      icon: Icons.shield,
                      onChanged: (value) {
                        setState(() {
                          hasMinLength = value.length >= 8;
                          hasSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value);
                          hasUppercase = RegExp(r'[A-Z]').hasMatch(value);
                        });
                      },
                      validator: (value) => Validators.confirmPassword(
                          value,
                          _passwordTEController.text),),


                    const SizedBox(height: 25),

                    /// Security Requirements
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "SECURITY REQUIREMENTS",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          ),
                          const SizedBox(height: 10),

                          _buildRequirement("At least 8 characters", hasMinLength),
                          _buildRequirement("One special character", hasSpecialChar),
                          _buildRequirement("One uppercase letter", hasUppercase),

                        ],
                      ),
                    ),

                    const SizedBox(height: 30),

                    /// Button
                    SizedBox(
                      width: double.infinity,
                      child: PrimaryActionButton(text: 'Reset Password',
                          onTap: (){
                        context.go(RouteNames.passwordReset);
                          }),
                    ),


                    const SizedBox(height: 20),

                    /// 🔹 Login
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
                                ..onTap = () => _onTapLoginScreen(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


void _onTapLoginScreen(){
    context.go(RouteNames.login);
}
  /// 🔹 Requirement Row
  Widget _buildRequirement(String text, bool isValid) {
    return Row(
      children: [
        Icon(
          isValid ? Icons.check_circle : Icons.radio_button_unchecked,
          color: isValid ? Colors.green : Colors.grey,
          size: 18,
        ),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}

