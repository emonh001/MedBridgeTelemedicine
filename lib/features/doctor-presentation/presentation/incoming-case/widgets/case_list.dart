import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../app/routes/route_paths.dart';
import '../../common/models/case_model.dart';

class CaseList extends StatelessWidget {
  final String name;
  final String age;
  final String tag;
  final Color tagColor;
  final String symptoms;
  final String time;

  const CaseList({
    super.key,
    required this.name,
    required this.age,
    required this.tag,
    required this.tagColor,
    required this.symptoms,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push(
          '${RoutePaths.booking}/case-detail',
          extra: CaseModel(
            name: name,
            age: age,
            symptoms: symptoms,
            tag: tag,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(radius: 20),
                const SizedBox(width: 10),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold)),
                      Text(age,
                          style: const TextStyle(color: Colors.black)),
                    ],
                  ),
                ),

                Text(time,
                    style: const TextStyle(
                        fontSize: 10, color: Colors.green)),
              ],
            ),

            const SizedBox(height: 10),

            // TAG
            Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: tagColor.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(tag,
                  style: TextStyle(
                      color: tagColor,
                      fontSize: 11,
                      fontWeight: FontWeight.w600)),
            ),

            const SizedBox(height: 10),

            // SYMPTOMS
            const Text("SYMPTOMS",
                style:
                TextStyle(fontSize: 10, color: Colors.black)),

            const SizedBox(height: 4),

            Text(symptoms,
                style: const TextStyle(fontSize: 13)),

            const SizedBox(height: 12),

            // BUTTONS
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      foregroundColor: Colors.red,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text("✕ Reject"),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2F6FED),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text("✓ Accept"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}