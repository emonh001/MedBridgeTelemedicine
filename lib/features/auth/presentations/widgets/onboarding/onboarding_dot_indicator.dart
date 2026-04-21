import 'package:flutter/material.dart';
import 'package:medbridge_telemedicine/app/helpers/device_helper_functions.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../provider/onboarding/onboarding_provider.dart';
class OnboardingDotIndicator extends StatelessWidget {
  const OnboardingDotIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<OnboardingProvider>(context);
    return Positioned(
      bottom: DeviceHelperFunctions.getBottomNavigationBarHeight() * 2,
      left: DeviceHelperFunctions.getScreenWidth(context) / 2.5,
      right: DeviceHelperFunctions.getScreenWidth(context) / 2.5,
      child: SmoothPageIndicator(
        controller: provider.pageController,
        count: 3,
        effect: const ExpandingDotsEffect(dotHeight: 6.0),
      ),
    );
  }
}