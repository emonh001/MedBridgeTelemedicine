import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String label;
  final String hint;
  final IconData? icon;
  final int maxLines;
  final TextEditingController? controller;


  const InputField({
    super.key,
    required this.label,
    required this.hint,
    this.icon,
    this.maxLines = 1,
    this.controller,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {




  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: .bold,
            color: Colors.blue
          ),
        ),

        const SizedBox(height: 8),

        /// INPUT
        TextField(
          controller: widget.controller,
          maxLines: widget.maxLines,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: const TextStyle(color: Colors.grey),

            suffixIcon: widget.icon != null
                ? Icon(widget.icon, color: Colors.grey)
                : null,
            filled: true,
            fillColor: const Color(0xFFF2F3F5),

            contentPadding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 12,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }

}
