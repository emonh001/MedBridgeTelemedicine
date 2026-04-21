import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:medbridge_telemedicine/app/constants/assets_paths.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/widgets/onboarding/onboarding_dot_indicator.dart';
import '../../../../../app/constants/app_strings.dart';
import '../../provider/onboarding/onboarding_provider.dart';
import '../../widgets/onboarding/on_boarding_pages.dart';
import '../../widgets/onboarding/onboard_skip_button.dart';
import '../../widgets/onboarding/onboard_next_button.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OnboardingProvider(),
      child: Consumer<OnboardingProvider>(
        builder: (context, provider, child) {
          return Scaffold(
            appBar: AppBar(
              actionsPadding: const EdgeInsets.only(right: 16),
              actions: [
                if (!provider.isLastPage)
                  OnboardSkipButton(
                    onTap: () => provider.skipOnboarding(),
                  ),
              ],
            ),
            body: Stack(
              children: [
                PageView(
                  controller: provider.pageController,
                  onPageChanged: (index) => provider.setPage(index),
                  children: [
                    OnBoardingPages(
                      onboardImage: AssetsPaths.onBoardingImg1,
                      title: AppStrings.onboardingTitle1,
                      subtitle: AppStrings.onboardingSubTitle1,
                    ),
                    OnBoardingPages(
                      onboardImage: AssetsPaths.onBoardingImg2,
                      title: AppStrings.onboardingTitle2p1,
                      subtitle: AppStrings.onboardingSubTitle2,
                    ),
                    OnBoardingPages(
                      onboardImage: AssetsPaths.onBoardingImg3,
                      title: AppStrings.onboardingTitle3,
                      subtitle: AppStrings.onboardingSubTitle3,
                    ),
                  ],
                ),
                const OnboardingDotIndicator(),
                OnboardNextButton(
                  onTap: () async {
                    if (provider.isLastPage) {
                      await provider.completeOnboarding();
                      if (context.mounted) {
                        Navigator.pushReplacementNamed(context, '/login');
                      }
                    } else {
                      provider.nextPage();
                    }
                  },
                  text: provider.isLastPage ? 'Get Started' : 'Next',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}