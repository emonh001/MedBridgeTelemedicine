import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medbridge_telemedicine/features/common/presentations/widgets/primary_action_button.dart';

import '../../../../app/constants/assets_paths.dart';
import '../widgets/common_list_tile.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
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
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.notifications_none, color: Colors.blueAccent),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors
                              .grey[200], // Add a background color to see if the box exists
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          image: DecorationImage(
                            image: AssetImage(AssetsPaths.doctorAvatarPng),
                            fit: BoxFit
                                .cover, // <--- This ensures the image fills the container
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.blueAccent,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text("Dr. Julian Sterling", style: textTheme.headlineLarge),
              Container(
                height: 30,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                alignment: .center,
                child: Text("SPECIALIST DOCTOR"),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: .start,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text("ID NUMBER"),
                      Text("MED-9920-X", style: textTheme.titleLarge),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    width: 150,
                    child: PrimaryActionButton(
                      text: "Edit Profile",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              // Personal Information
              Text(
                "PERSONAL INFORMATION",
                style: textTheme.titleLarge!.copyWith(color: Colors.blueAccent),
              ),
              const SizedBox(height: 20),
              CommonListTile(
                textTheme: textTheme,
                title: 'Bio & Expertise',
                icon: Icon(
                  Icons.person_outlined,
                  size: 30,
                  color: Colors.blueAccent,
                ),
                iconBgColor: Color(0xFFD8E2FF),
                onTap: (){},
              ),
              const SizedBox(height: 20),
              CommonListTile(
                textTheme: textTheme,
                title: 'Contact Details',
                icon: Icon(
                  Icons.contact_page_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                iconBgColor: Color(0xFFD9E6DA),
                onTap: (){},
              ),
              const SizedBox(height: 20),


              Text(
                "ACCOUNT SETTINGS",
                style: textTheme.titleLarge!.copyWith(color: Colors.blueAccent),
              ),
              const SizedBox(height: 20),
              CommonListTile(
                textTheme: textTheme,
                title: 'Notification Preferences',
                icon: Icon(
                  Icons.notifications_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                iconBgColor: Color(0xFFE6E8EA),
                onTap: (){},
              ),
              const SizedBox(height: 20),
              CommonListTile(
                textTheme: textTheme,
                title: 'Payout Methods',
                icon: Icon(
                  Icons.currency_exchange,
                  size: 30,
                  color: Colors.black,
                ),
                iconBgColor: Color(0xFFE6E8EA),
                onTap: (){},
              ),
              const SizedBox(height: 20),

              Text(
                "SECURITY",
                style: textTheme.titleLarge!.copyWith(color: Colors.blueAccent),
              ),
              const SizedBox(height: 20),
              CommonListTile(
                textTheme: textTheme,
                title: 'Password & 2FA',
                icon: Icon(
                  Icons.security_outlined,
                  size: 30,
                  color: Colors.red,
                ),
                iconBgColor: Color(0xFFE6E8EA),
                onTap: (){},
              ),
              const SizedBox(height: 20),

              Text(
                "HELP & SUPPORT",
                style: textTheme.titleLarge!.copyWith(color: Colors.blueAccent),
              ),
              const SizedBox(height: 20),
              CommonListTile(
                textTheme: textTheme,
                title: 'Help Center',
                icon: Icon(
                  Icons.help_center_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                iconBgColor: Color(0xFFE6E8EA),
                onTap: (){},
              ),
              const SizedBox(height: 20),
              CommonListTile(
                textTheme: textTheme,
                title: 'Terms of Service',
                icon: Icon(
                  Icons.content_paste_search_sharp,
                  size: 30,
                  color: Colors.black,
                ),
                iconBgColor: Color(0xFFE6E8EA),
                onTap: (){},
              ),
              const SizedBox(height: 20),

              GestureDetector(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(Icons.logout, color: Colors.red,),
                    const SizedBox(width: 10,),
                    Text("SIGN OUT", style: textTheme.titleLarge!.copyWith(color: Colors.red),)
                  ],
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
