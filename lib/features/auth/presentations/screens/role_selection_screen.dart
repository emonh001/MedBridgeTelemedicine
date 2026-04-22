import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/features/common/presentations/widgets/custom_app_bar.dart';

import '../../../../app/routes/route_names.dart';
import '../widgets/role_card.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FB),

      //MedBridge, help_outline
      appBar: CustomAppBar(
        title: 'MedBridge',
        icon: Icons.help_outline,
        onPressed: () {
          context.push(RouteNames.settingsScreen);
        },
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),

                /// Title
                Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: "Welcome to the\n",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                          text: "Digital Sanctuary\n",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 36,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                          text:
                              "Empowering healthcare through connection. Please select your role to begin your journey with us.",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF414754),
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                const SizedBox(height: 25),

                RoleCard(
                  icon: Icons.person_search,
                  title: "Patient",
                  description:
                      "Access world-class specialists, manage health records, and book consultations instantly.",
                  buttonText: "Continue as Patient",
                  color: Colors.white,
                  iconBg: Colors.blue.shade200,
                  onTap: () {
                    context.push(RouteNames.signUpPatient);
                  },
                  btnColor: Colors.blue,
                  iconColor: Color(0xFF0057C1),
                ),

                const SizedBox(height: 20),

                RoleCard(
                  icon: Icons.local_hospital,
                  title: "Doctor",
                  description:
                      "Provide expert care through telemedicine, manage your practice, and reach patients globally.",
                  buttonText: "Provider Portal",
                  color: Colors.white,
                  iconBg: Colors.green.shade300,
                  onTap: () {
                    context.push(RouteNames.signUpDoctor);
                  },
                  btnColor: Colors.green,
                  iconColor: Color(0xFF006E1C),
                ),

                const SizedBox(height: 20),

                RoleCard(
                  icon: Icons.health_and_safety,
                  title: "Rural Health Worker",
                  description:
                      "Bridging the gap in remote communities. Access diagnostic tools and coordinate with specialists.",
                  buttonText: "Access Field Tools",
                  color: Colors.grey.shade200,
                  iconBg: Colors.grey.shade400,
                  onTap: () {
                    context.push(RouteNames.signUpHealthWorker);
                  },
                  btnColor: Colors.grey,
                  iconColor: Color(0xFF535F56),
                ),

                SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "By choosing a role, you agree to our Terms of Service and Medical Privacy Policy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
