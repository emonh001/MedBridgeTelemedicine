import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CaseDetailAppBar extends StatelessWidget {
  const CaseDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => context.pop(),
            child: const Icon(Icons.arrow_back_ios_new, size: 18),
          ),

          const SizedBox(width: 8),


          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "MedSanctuary",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "CASE DETAILS #8821",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          const Spacer(),


          const Icon(Icons.notifications_none),

          const SizedBox(width: 10),

          // 👤 PROFILE
          const CircleAvatar(radius: 14),
        ],
      ),
    );
  }
}