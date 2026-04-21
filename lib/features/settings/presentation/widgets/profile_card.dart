import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Alex Johnston",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700)),
              SizedBox(height: 4),
              Text("Premium Member • ID: MS-9921",
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 14)),
            ],
          )
        ],
      ),
    );
  }
}