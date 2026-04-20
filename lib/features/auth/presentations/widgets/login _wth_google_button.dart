import 'package:flutter/material.dart';

class LoginWthGoogleButton extends StatelessWidget {
  LoginWthGoogleButton({
    super.key,
    required this.onTap, required this.icon, required this.text,
  });

  final VoidCallback onTap;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 6),
          Text(text),
        ],
      ),
    );
  }
}