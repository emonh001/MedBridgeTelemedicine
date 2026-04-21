import 'package:flutter/material.dart';

class HelpLineCard extends StatelessWidget {
  const HelpLineCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Need help?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700)),
                SizedBox(height: 6),
                Text("Our medical assistants are 24/7",
                    style: TextStyle(color: Colors.white70, fontSize: 14, fontWeight: FontWeight.w400)),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue
                  ),
                  onPressed: (){},
                  child: Text("Contact Support"),
                )
              ],
            ),
          ),
          const Icon(Icons.support_agent, color: Colors.white24, size: 40)
        ],
      ),
    );
  }
}