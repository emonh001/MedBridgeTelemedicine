import 'package:flutter/material.dart';

class BookingInputField extends StatelessWidget {
  const BookingInputField({
    super.key,
    required this.label,
    required this.hint,
  });

  final String label;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return _FieldWrapper(
      label: label,
      child: TextField(
        decoration: _inputDecoration(hint),
      ),
    );
  }
}

class BookingDropdownField extends StatelessWidget {
  const BookingDropdownField({
    super.key,
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  final String label;
  final String value;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return _FieldWrapper(
      label: label,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xFFE8EDF2)),
        ),
        child: DropdownButton<String>(
          value: value,
          onChanged: onChanged,
          items: items
              .map((item) => DropdownMenuItem(value: item, child: Text(item)))
              .toList(),
          isExpanded: true,
          underline: const SizedBox(),
          style: const TextStyle(color: Color(0xFF1A1A2E), fontSize: 14),
        ),
      ),
    );
  }
}

class BookingTextAreaField extends StatelessWidget {
  const BookingTextAreaField({
    super.key,
    required this.label,
    required this.hint,
  });

  final String label;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return _FieldWrapper(
      label: label,
      child: TextField(
        maxLines: 3,
        decoration: _inputDecoration(
          hint,
          hintFontSize: 13,
          contentPadding: const EdgeInsets.all(14),
        ),
      ),
    );
  }
}

class _FieldWrapper extends StatelessWidget {
  const _FieldWrapper({
    required this.label,
    required this.child,
  });

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: Color(0xFF6B7280),
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 6),
        child,
      ],
    );
  }
}

InputDecoration _inputDecoration(
  String hint, {
  double hintFontSize = 14,
  EdgeInsetsGeometry contentPadding = const EdgeInsets.symmetric(
    horizontal: 14,
    vertical: 12,
  ),
}) {
  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(color: const Color(0xFFCBD5E0), fontSize: hintFontSize),
    filled: true,
    fillColor: Colors.white,
    contentPadding: contentPadding,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFFE8EDF2)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFFE8EDF2)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xFF1A6BFF),
        width: 1.5,
      ),
    ),
  );
}
