import 'package:flutter/material.dart';

class AppointmentsHeader extends StatelessWidget {
  const AppointmentsHeader({
    super.key,
    required this.showUpcoming,
    required this.onUpcomingTap,
    required this.onPastTap,
  });

  final bool showUpcoming;
  final VoidCallback onUpcomingTap;
  final VoidCallback onPastTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Bookings',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1A1A2E),
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            'Manage your clinical sessions and history.',
            style: TextStyle(fontSize: 13, color: Color(0xFF6B7280)),
          ),
          const SizedBox(height: 16),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F4F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                _AppointmentsTab(
                  label: 'Upcoming',
                  isActive: showUpcoming,
                  onTap: onUpcomingTap,
                ),
                _AppointmentsTab(
                  label: 'Past',
                  isActive: !showUpcoming,
                  onTap: onPastTap,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AppointmentsTab extends StatelessWidget {
  const _AppointmentsTab({
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  final String label;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 6,
                      offset: const Offset(0, 1),
                    ),
                  ]
                : null,
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
              color: isActive
                  ? const Color(0xFF1A1A2E)
                  : const Color(0xFF6B7280),
            ),
          ),
        ),
      ),
    );
  }
}
