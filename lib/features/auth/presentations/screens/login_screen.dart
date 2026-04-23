import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/constants/assets_paths.dart';
import 'package:medbridge_telemedicine/app/routes/route_paths.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/widgets/sign-up-textfield.dart';
import 'package:medbridge_telemedicine/features/common/presentations/widgets/primary_action_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SvgPicture.asset(AssetsPaths.safeIcon, height: 20),
        ),
        title: Text(
          "MedBridge",
          style: textTheme.titleSmall!.copyWith(
            color: Colors.blueAccent,
            fontSize: 20,
            fontWeight: .bold,
          ),
        ),
        actionsPadding: const EdgeInsets.only(right: 10),
        actions: [GestureDetector(onTap: () {}, child: Icon(Icons.close))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              Text(
                "Welcome Back",
                textAlign: .start,
                style: textTheme.titleSmall!.copyWith(
                  fontSize: 20,
                  fontWeight: .bold,
                ),
              ),
              Text(
                "Enter your details to access your dashboard.",
                textAlign: .start,
                style: textTheme.bodySmall!.copyWith(fontWeight: .bold),
              ),

              const SizedBox(height: 10),

              SignUpTextField(
                label: "Email Address",
                hint: "john@example.com",
                iconData: Icons.eighteen_mp,
                textEditingController: _emailController,
                input: .emailAddress,
              ),

              const SizedBox(height: 10),

              SignUpTextField(
                label: "Password",
                hint: "*****",
                iconData: Icons.eighteen_mp,
                textEditingController: _emailController,
                isPassword: true,
                input: .visiblePassword,
              ),

              Row(
                mainAxisAlignment: .end,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.go(RoutePaths.passwordResetSuccess);
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (v) {}),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Remember Password",
                      style: TextStyle(fontWeight: .bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: PrimaryActionButton(text: "Login", onTap: () {}),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: .center,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.black),
                    child: Text(
                      "or continue with",
                      style: textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: .spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Image.asset(AssetsPaths.googleIcon),
                        SizedBox(width: 7),
                        Text("Google"),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.apple),
                        SizedBox(width: 7),
                        Text("Apple"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: .center,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      children: [
                        const TextSpan(text: "Don't have an account? "),
                        TextSpan(
                          text: 'Sign Up',
                          style: const TextStyle(
                            color: Colors.blue, // Blue accent color
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () =>
                                context.go(RoutePaths.roleSelection),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
