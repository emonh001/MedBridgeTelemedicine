import 'package:flutter/material.dart';

import '../../../../common/presentations/widgets/primary_action_button.dart';

class OnboardNextButton extends StatelessWidget {
  const OnboardNextButton({
    super.key,
    required this.onTap,
    required this.text
  });
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 37, vertical: 37),
        child: PrimaryActionButton(
          text: text,
          onTap: onTap,
          icon: Icon(Icons.arrow_right_alt_sharp),
        ),
      ),
    );
  }
}