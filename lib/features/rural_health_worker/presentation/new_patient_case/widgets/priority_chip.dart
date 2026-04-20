import 'package:flutter/material.dart';

class PriorityChip extends StatefulWidget {
  const PriorityChip({super.key});

  @override
  State<PriorityChip> createState() => _PriorityChipState();
}

class _PriorityChipState extends State<PriorityChip> {
  String selected = "Medium";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "PRIORITY LEVEl",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(height: 8),

        Row(
          children: [
            _buildChip("Low", Colors.blueAccent),
            _buildChip("Medium", Colors.orange),
            _buildChip("High", Colors.red),
          ],
        ),
      ],
    );
  }

  Widget _buildChip(String label, Color color) {
    final isSelected = selected == label;

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ChoiceChip(
        label: Text(label),
        selected: isSelected,
        selectedColor: color.withOpacity(0.2),
        labelStyle: TextStyle(
          color: isSelected ? color : Colors.black,
        ),
        onSelected: (_) {
          setState(() => selected = label);
        },
      ),
    );
  }
}