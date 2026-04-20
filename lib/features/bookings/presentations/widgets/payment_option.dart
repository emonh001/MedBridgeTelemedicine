import 'package:flutter/material.dart';

class PaymentOption extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const PaymentOption({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Radio(
        value: title,
        groupValue: selected ? title : null,
        onChanged: (_) => onTap(),
      ),
    );
  }
}