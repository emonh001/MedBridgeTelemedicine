import 'package:flutter/material.dart';

class DropdownMenuWidget extends StatelessWidget {
  final String? value;
  final List<String> items;
  final String label;
  final IconData icon;
  final String? Function(String?)? validator;
  final void Function(String?) onChanged;

  const DropdownMenuWidget({
    super.key,
    required this.value,
    required this.items,
    required this.label,
    required this.icon,
    required this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const SizedBox(height: 5),
          DropdownButtonFormField<String>(
            value: value,
            items: items
                .map((e) => DropdownMenuItem(
              value: e,
              child: Text(e),
            ))
                .toList(),
            onChanged: onChanged,
            decoration: InputDecoration(
              prefixIcon: Icon(icon),
              filled: true,
              fillColor: const Color(0xFFE0E3E5),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12)
              ),
            ),
            validator: validator,
          ),
        ],
      ),
    );
  }
}