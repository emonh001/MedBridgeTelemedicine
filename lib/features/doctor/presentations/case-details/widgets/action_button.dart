import 'package:flutter/material.dart';
class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.white,
      child: Column(
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.videocam,color: Colors.white,),
            label: const Text("Start Video Consultation",style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF2F6FED),
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
          const SizedBox(height: 6),
          TextButton(
            onPressed: () {},
            child: const Text("Add Clinical Notes"),
          )
        ],
      ),
    );
  }
}