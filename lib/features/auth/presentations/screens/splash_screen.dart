import 'dart:async';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/constants/assets_paths.dart';
import 'package:medbridge_telemedicine/app/helpers/device_helper_functions.dart';
import 'package:medbridge_telemedicine/app/routes/route_names.dart';


import '../provider/onboarding/onboarding_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _currentPosition = 0;
  final int _dotsCount = 3;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Start the automatic animation
    _timer = Timer.periodic(const Duration(milliseconds: 500), (Timer timer) {
      setState(() {
        // Increment position and loop back to 0
        _currentPosition = (_currentPosition + 1) % _dotsCount;
      });
    });

    _checkOnboardingAndNavigate();
  }

  void _checkOnboardingAndNavigate() async {
    await Future.delayed(const Duration(seconds: 3));

    if (!mounted) return;

    // Check if user has seen onboarding
    final hasSeenOnboarding = await OnboardingProvider.hasSeenOnboarding();

    if (!mounted) return;

    if (hasSeenOnboarding) {

      context.go(RouteNames.roleSelection);
    } else {
      // Navigate to onboarding
      context.go(RouteNames.onboard);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                top: 80,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    AssetsPaths.splashTopIcon,
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
              Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset(AssetsPaths.medBridgeLogo),
                  const SizedBox(height: 20),
                  Text(
                    "MedBridge",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.blueAccent.shade700,
                    ),
                  ),
                  Text(
                    "Empowering Your Health Journey",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 50),
                  DotsIndicator(
                    dotsCount: _dotsCount,
                    position: _currentPosition,
                    decorator: const DotsDecorator(
                      activeColor: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    textAlign: TextAlign.center,
                    "Bridging the gap between expert clinical care and your daily wellness.",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AssetsPaths.safeIcon,
                        height: 15,
                        width: 15,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "SECURE PROFESSIONAL NETWORK",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                ],
              ),
              Positioned(
                right: 8,
                bottom: DeviceHelperFunctions.getBottomNavigationBarHeight() * 1,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    AssetsPaths.splashBottomIcon,
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel(); // Always cancel timers to avoid memory leaks
    super.dispose();
  }
}