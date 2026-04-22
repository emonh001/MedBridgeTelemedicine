import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/widgets/login%20_wth_google_button.dart';

import '../../../../app/routes/route_names.dart';
import '../../../common/presentation/widgets/auth_header.dart';
import '../../../common/presentation/widgets/custom_button.dart';
import '../../data/models/validator.dart';
import '../widgets/login_text_field.dart';

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
  final _emailTEController = TextEditingController();
  final _passwordTEController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isObscure = true;
  bool rememberMe = false;
  bool loginInProgress = false;
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 50, bottom: 50, left: 24, right: 24),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),

                /// Logo + App Name
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xFF0057C1),
                                  Color(0xFF2570E5),
                                ],
                                begin: AlignmentGeometry.topLeft,
                                end: AlignmentGeometry.bottomRight
                            )
                        ),
                        child: Center(
                          child: Icon(Icons.medical_services_outlined, color: Colors.white, size: 32,),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "MedBridge",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                /// Welcome Text

                AuthHeader(title: 'Welcome Back', subtitle: 'Enter your details to access your dashboard.'),
                const SizedBox(height: 25),

                /// Email
                LoginTextField(
                  label: 'Email Address',
                  hint: 'john.doe@example.com',
                  iconData: Icons.email_outlined,
                  input: TextInputType.emailAddress,
                  validator: Validators.email,
                  textEditingController: _emailTEController,
                ),

                const SizedBox(height: 20),

                /// Password
                LoginTextField(
                  label: 'Password',
                  hint: '******',
                  iconData: Icons.lock_outlined,
                  isPassword: true,
                  textEditingController: _passwordTEController,
                  validator: Validators.password,
                ),

                const SizedBox(height: 10),

                /// Remember + Forgot
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: rememberMe,
                          onChanged: (value) {
                            setState(() {
                              rememberMe = value!;
                            });
                          },
                        ),
                        const Text("Remember this device"),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Forgot Password?", style: TextStyle(color: Colors.blue),),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// Login Button

                Visibility(
                    visible: loginInProgress == false,
                    replacement: Center(
                      child: CircularProgressIndicator(),
                    ),
                    child: CustomButton(onTap: _onTapLoginButton, btnName: 'Login',)),

                const SizedBox(height: 25),

                /// Divider
                Row(
                  children: const [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("or continue with"),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                const SizedBox(height: 25),

                /// Social Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LoginWthGoogleButton(onTap: (){}, icon: Icons.g_mobiledata, text: 'Google'),
                    LoginWthGoogleButton(onTap: (){}, icon: Icons.apple, text: 'Apple'),
                  ],
                ),

                const SizedBox(height: 30),

                /// Sign Up Don't have an account? Sign Up
                Center(
                  child: RichText(text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16
                            ),
                            recognizer: TapGestureRecognizer()..onTap = _onTapSignUpButton
                        )
                      ]
                  )),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapLoginButton() async{
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      loginInProgress = true;
    });

    await Future.delayed(Duration(seconds: 2));

    setState(() {
      loginInProgress = false;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('All good')),
    );
  }

  void _onTapSignUpButton(){
    context.push(RouteNames.roleSelection);
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}


