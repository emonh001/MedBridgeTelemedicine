import 'package:flutter/material.dart';
import 'package:medbridge_telemedicine/features/settings/presentation/widgets/profile_card.dart';

import '../widgets/help_line_card.dart';
import '../widgets/logout_button.dart';
import '../widgets/settings_tile.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications_none, color: Colors.blue),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 32, right: 24, left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileCard(),
            const SizedBox(height: 20),

            const Text("Preferences",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.blue)),

            const SizedBox(height: 10),
            SettingsTile(
              icon: Icons.notifications,
              iconColor: Color(0xFF006E1C),
              iconBackgroundColor: Color(0x3391F78E),
              title: "Notifications",
              subtitle: "Alerts for appointments and health tips",
              trailing: Switch(
                value: true,
                onChanged: (value) {},
              ),
            ),

            SettingsTile(
              onTap: (){},
              icon: Icons.language,
              iconColor: Color(0xFF0057C1),
              iconBackgroundColor: Color(0x4DD8E2FF),
              title: "Language",
              subtitle: "Application display\n language",
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("English\n (US)", style: TextStyle(color: Color(0xFF0057C1)),),
                  Icon(Icons.chevron_right,),
                ],
              ),
            ),


            SettingsTile(
              icon: Icons.dark_mode,
              iconColor: Color(0xFF191C1E),
              iconBackgroundColor: Color(0xFFE6E8EA),
              title: "Dark Mode",
              subtitle: "Reduce eye strain at night",
              trailing: Switch(
                value: false,
                onChanged: (value) {},
              ),
            ),

            const SizedBox(height: 20),

            const Text("Security & Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.blue)),

            const SizedBox(height: 10),
            SettingsTile(
              onTap: (){},
              icon: Icons.lock,
              iconColor: Color(0xFF006E1C),
              iconBackgroundColor: Color(0x3391F78E),
              title: "Privacy Center",
              subtitle: "Manage your health data sharing",
              trailing: const Icon(Icons.chevron_right),
            ),


            const SizedBox(height: 20),

            HelpLineCard(),

            const SizedBox(height: 32),

            LogoutButton(),
            const SizedBox(height: 32),

          ],
        ),
      ),
    );
  }




}



