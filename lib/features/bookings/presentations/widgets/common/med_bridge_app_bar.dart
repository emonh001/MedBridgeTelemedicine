import 'package:flutter/material.dart';

class MedBridgeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MedBridgeAppBar({
    super.key,
    this.showLeading = false,
    this.showProfileAvatar = false,
  });

  final bool showLeading;
  final bool showProfileAvatar;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: showLeading
          ? const Icon(Icons.arrow_back, color: Color(0xFF1A1A2E))
          : null,
      title: Row(
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: const Color(0xFF1A6BFF),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.medical_services,
              color: Colors.white,
              size: 16,
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            'MedBridge',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1A1A2E),
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications_outlined,
            color: Color(0xFF1A1A2E),
          ),
          onPressed: () {},
        ),
        if (showProfileAvatar)
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: const Color(0xFF1A6BFF).withOpacity(0.1),
              child: const Icon(
                Icons.person,
                color: Color(0xFF1A6BFF),
                size: 18,
              ),
            ),
          ),
      ],
    );
  }
}
