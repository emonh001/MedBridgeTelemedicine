import 'package:flutter/material.dart';
class CaseSummaryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final IconData iconData;
  final bool isOutlined;
  final Color? iconColor;

  const CaseSummaryCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.iconData,
    this.isOutlined = false,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isOutlined ? Colors.white : color,
        borderRadius: BorderRadius.circular(16),
        border:
        isOutlined ? Border.all(color: Colors.grey.shade300) : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            iconData,
            size: 27,
            color: iconColor ??
                (isOutlined ? Colors.black : Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: isOutlined ? Colors.black : Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              color: isOutlined ? Colors.grey : Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}