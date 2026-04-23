import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.controller,
    required this.hint,
    required this.label,
    required this.obscure,
    required this.onToggle,
    required this.icon,
    required this.onChanged,
    required this.validator,
  });

  final TextEditingController controller;
  final String hint;
  final dynamic label;
  final bool obscure;
  final VoidCallback onToggle;
  final IconData icon;
  final Function(String p1)? onChanged;
  final String? Function(String? p1)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 10),

        TextFormField(
          controller: controller,
          validator: validator,
          obscureText: obscure,
          onChanged: onChanged, // 👈 use it
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            hintText: hint,
            filled: true,
            fillColor: const Color(0xFFE0E3E5),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none),
            suffixIcon: IconButton(
              icon: Icon(
                obscure ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: onToggle,
            ),
          ),
        ),
      ],
    );
  }
}