import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/constants/assets_paths.dart';
import 'package:medbridge_telemedicine/app/routes/route_names.dart';
import 'package:medbridge_telemedicine/features/common/presentations/widgets/primary_action_button.dart';

class PasswordResetSuccessScreen extends StatelessWidget {
  const PasswordResetSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              const Spacer(),
              Text(
                "MedSanctuary",
                style: textTheme.titleSmall!.copyWith(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: .bold,
                ),
              ),
              const Spacer(),

              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    alignment: .center,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: SvgPicture.asset(
                      AssetsPaths.greenTikIcon,
                      height: 80,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SvgPicture.asset(AssetsPaths.safeIcon, height: 30),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text("Password Reset!", style: textTheme.headlineLarge),

              Text(
                "Your password has been\nsuccessfully updated",
                textAlign: .center,
                style: textTheme.bodySmall,
              ),

              const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: PrimaryActionButton(
                    text: "Back to login",
                    icon: Icon(Icons.login_sharp),
                    onTap: () {
                      context.go(RouteNames.login);
                    },
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AssetsPaths.safeIcon, height: 15, width: 15),
                  const SizedBox(width: 10),
                  Text(
                    "SECURE PROFESSIONAL NETWORK",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
