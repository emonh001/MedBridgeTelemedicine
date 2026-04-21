import 'package:flutter/material.dart';

import '../../../../../app/helpers/device_helper_functions.dart';


class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({
    super.key,
    required this.onboardImage,
    required this.title,
    required this.subtitle,
  });

  final String onboardImage;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 24,
        left: 24,
        top: DeviceHelperFunctions.getAppBarHeight(),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Image.asset(onboardImage, width: double.infinity, height: 400,),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 12,),
          Text(subtitle, textAlign: .start),
        ],
      ),
    );
  }
}