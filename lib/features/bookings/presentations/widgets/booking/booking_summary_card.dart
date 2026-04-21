import 'package:flutter/material.dart';

class BookingSummaryCard extends StatelessWidget {
  const BookingSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFFE8F0FF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.person,
              color: Color(0xFF1A6BFF),
              size: 32,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Dr. James Wilson',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1A1A2E),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00C896).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        'VERIFIED',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF00C896),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                const Text(
                  'Senior Cardiologist',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B7280),
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  "St. Mary's Hospital",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B7280),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(
                      Icons.calendar_today,
                      size: 12,
                      color: Color(0xFF1A6BFF),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Oct 24, 2023',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF1A6BFF),
                      ),
                    ),
                    SizedBox(width: 12),
                    Icon(
                      Icons.access_time,
                      size: 12,
                      color: Color(0xFF1A6BFF),
                    ),
                    SizedBox(width: 4),
                    Text(
                      '09:30 AM',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF1A6BFF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
