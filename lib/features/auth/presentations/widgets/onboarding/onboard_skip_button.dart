import 'package:flutter/material.dart';

class OnboardSkipButton extends StatelessWidget {
  const OnboardSkipButton({
    super.key,
    required this.onTap
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text("Skip"),
    );
  }
}