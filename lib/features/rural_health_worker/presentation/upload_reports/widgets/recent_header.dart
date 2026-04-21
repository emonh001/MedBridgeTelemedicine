import 'package:flutter/material.dart';

class RecentHeader extends StatelessWidget {
  const RecentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Recent Documents",
            style: TextStyle(fontWeight: FontWeight.bold)),
        Text("3 FILES", style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}