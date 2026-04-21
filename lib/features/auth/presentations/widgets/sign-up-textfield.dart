import 'package:flutter/material.dart';

class SignUpTextField extends StatelessWidget {
  SignUpTextField({
    super.key,
    required this.label,
    required this.hint,
    this.input = TextInputType.text,
    required this.iconData,
    required this.textEditingController,
    this.isPassword = false,
    this.validator,
  });

  final String label, hint;
  final IconData iconData;
  final TextEditingController textEditingController;
  final TextInputType input;
  final bool isPassword;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const SizedBox(height: 5),
          TextFormField(
            controller: textEditingController,
            obscureText: isPassword,
            validator: validator,
            textInputAction: TextInputAction.next,
            keyboardType: input,
            decoration: InputDecoration(
                hintText: hint,
                prefixIcon: Icon(iconData),
                filled: true,
                fillColor: const Color(0xFFE0E3E5),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none
                )
            ),
          ),
        ],
      ),
    );
  }
}