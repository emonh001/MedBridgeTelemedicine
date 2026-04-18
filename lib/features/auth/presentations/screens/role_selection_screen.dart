import 'package:flutter/material.dart';


class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFFF7F9FB),
      /// ✅ AppBar instead of Row
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "MedBridge",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.help_outline, color: Colors.black),
          )
        ],
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
                            text: "Empowering healthcare through connection. Please select your role to begin your journey with us.",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF414754),
                                height: 1.5)
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),


                ),

                const SizedBox(height: 25),

                /// Cards
                RoleCard(
                  icon: Icons.person_search,
                  title: "Patient",
                  description:
                  "Access world-class specialists, manage health records, and book consultations instantly.",
                  buttonText: "Continue as Patient",
                  color: Colors.white,
                  iconBg: Colors.blue.shade200,
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPatientScreen()));
                  },
                  btnColor: Colors.blue, iconColor: Color(0xFF0057C1),
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpDoctorScreen()));
                  }, btnColor: Colors.green, iconColor: Color(0xFF006E1C),
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpHealthWorkerScreen()));
                  }, btnColor: Colors.grey, iconColor: Color(0xFF535F56),
                ),




                SizedBox(height: 32,),
                /// Bottom Text
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "By choosing a role, you agree to our Terms of Service and Medical Privacy Policy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class RoleCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String buttonText;
  final Color color;
  final Color iconBg;
  final Color btnColor;
  final Color iconColor;
  final VoidCallback onTap;

  const RoleCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.color,
    required this.iconBg,
    required this.onTap,
    required this.btnColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Icon
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: iconColor),
          ),

          const SizedBox(height: 15),

          /// Title
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),

          const SizedBox(height: 8),

          /// Description
          Text(
            description,
            style: const TextStyle(
                color: Color(0xFF414754),
                height: 1.4,
                fontSize: 16,
                fontWeight: FontWeight.w400
            ),
          ),

          const SizedBox(height: 15),

          /// Button (Text + Arrow at END)
          TextButton(
            onPressed: onTap,
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero, // removes extra spacing
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  buttonText,
                  style: TextStyle(
                      color: btnColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16
                  ),
                ),
                const SizedBox(width: 6),
                Icon(
                  Icons.arrow_forward,
                  size: 18,
                  color: btnColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


