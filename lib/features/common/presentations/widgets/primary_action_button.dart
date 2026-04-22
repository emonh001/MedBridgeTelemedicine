import 'package:flutter/material.dart';

class PrimaryActionButton extends StatelessWidget {
  const PrimaryActionButton({
    super.key,
    this.icon,
    required this.text,
    required this.onTap,
  });

  final Icon? icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon: icon ?? Icon(Icons.arrow_right_alt),
        iconAlignment: IconAlignment.end,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          backgroundColor: Colors.blueAccent.shade700,
        ),
        label: Text(
          text,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
