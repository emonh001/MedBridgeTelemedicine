import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/routes/route_names.dart';

import '../../data/models/validator.dart';
import '../widgets/dropdown_menu_widget.dart';
import '../widgets/sign-up-textfield.dart';


class SignUpDoctorScreen extends StatefulWidget {
  const SignUpDoctorScreen({super.key});

  @override
  State<SignUpDoctorScreen> createState() => _SignUpDoctorScreenState();
}

class _SignUpDoctorScreenState extends State<SignUpDoctorScreen> {
  final nameTEController = TextEditingController();
  final emailTEController = TextEditingController();
  final phoneTEController = TextEditingController();
  final passwordTEController = TextEditingController();
  final confirmPasswordTEController = TextEditingController();
  final specializedTEController = TextEditingController();
  final experienceTEController = TextEditingController();
  final hospitalNameTEController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  bool signUpInProgress = false;
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FB),
      body: Center(
        child: SingleChildScrollView(
          padding:const EdgeInsets.all(16),
          child: Container(
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: const Offset(0, 5)
                  )
                ]
            ),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create Account", style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800
                  ),),
                  const SizedBox(height: 8,),
                  Text("Enter your details to join the MedBridge community.", style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),),
                  const SizedBox(height: 24,),
                  SignUpTextField(label: 'Full Name', hint: 'John Doe',iconData: Icons.person, textEditingController: nameTEController,
                    validator: Validators.name,),
                  DropdownMenuWidget(
                    value: selectedGender,
                    label: "Gender",
                    icon: Icons.person,
                    items: const ["Male", "Female", "Other"],
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                    validator: Validators.gender,
                  ),
                  SignUpTextField(label: 'Email', hint: 'john@example.com',iconData: Icons.email, textEditingController: emailTEController,
                    validator: Validators.email, input: TextInputType.emailAddress,),
                  SignUpTextField(label: 'Phone Number', hint: '+1(555) 000-0000',iconData: Icons.phone, textEditingController: phoneTEController,
                    validator: Validators.phone, input: TextInputType.phone,),

                  SignUpTextField(label: 'Specialized', hint: 'Cardiology, Dermatology,',iconData: Icons.folder_special, textEditingController: specializedTEController,
                    validator: Validators.specialization,),
                  SignUpTextField(label: 'Experience (Years)', hint: '5',iconData: Icons.work, textEditingController: experienceTEController,
                    validator: Validators.experience,),
                  SignUpTextField(label: 'Hospital ', hint: 'Parkview Hospital Limited',iconData: Icons.local_hospital, textEditingController: hospitalNameTEController,
                    validator: Validators.hospital,),
                  SignUpTextField(label: 'Password', hint: '******',iconData: Icons.lock, textEditingController: passwordTEController,isPassword: true,
                    validator: Validators.password,),
                  SignUpTextField(label: 'Confirm Password', hint: '******',iconData: Icons.lock_reset, textEditingController: confirmPasswordTEController, isPassword: true,
                    validator: (value) => Validators.confirmPassword(
                        value,
                        passwordTEController.text),),


                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                      children: [
                        Checkbox(value: isChecked, onChanged: (value) {
                          setState(() {
                            isChecked = value ?? false;
                          });
                        }),
                        Expanded(child: RichText(text: TextSpan(
                            text: 'By signing up, I agree to the ',
                            style: TextStyle(
                                color: Colors.black54
                            ),
                            children: [
                              TextSpan(
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold
                                  ),
                                  text: 'Terms & Conditions',
                                  recognizer: TapGestureRecognizer()..onTap = _onTapTermsConditionButton
                              ),
                              TextSpan(text: " and "),
                              TextSpan(
                                text: "Privacy Policy.",
                                recognizer: TapGestureRecognizer()..onTap = _onTapPrivacyPolicyButton,
                                style: TextStyle(
                                    color: Colors.blue
                                ),
                              ),
                            ]
                        ))),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Visibility(
                    visible: signUpInProgress == false,
                    replacement: Center(
                      child: CircularProgressIndicator(),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(onPressed: _onTapSignUpButton,
                          child: Text('Sign Up')
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: RichText(text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                        children: [
                          TextSpan(
                              text: 'Log In',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = _onTapLoginButton
                          )
                        ]
                    )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapTermsConditionButton(){}
  void _onTapPrivacyPolicyButton(){}
  void _onTapSignUpButton() async{
    if (!_formKey.currentState!.validate()) return;

    if (!isChecked) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please accept Terms & Conditions')),
      );
      return;
    }
    setState(() {
      signUpInProgress = true;
    });

    context.push(RouteNames.verifyOtp);

    setState(() {
      signUpInProgress = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('All good')),
    );
  }
  void _onTapLoginButton(){}

  void dispose() {
    nameTEController.dispose();
    emailTEController.dispose();
    phoneTEController.dispose();
    passwordTEController.dispose();
    confirmPasswordTEController.dispose();
    specializedTEController.dispose();
    experienceTEController.dispose();
    hospitalNameTEController.dispose();
    super.dispose();
  }
}


