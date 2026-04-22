import 'package:flutter/material.dart';

class SymptomsSelector extends StatefulWidget {
  final String title;
  final IconData icon;
  final Color color;

  const SymptomsSelector({
    super.key,
    required this.title,
    required this.icon,
    required this.color ,
  });

  @override
  State<SymptomsSelector> createState() => _SymptomsSelectorState();
}

class _SymptomsSelectorState extends State<SymptomsSelector> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => isSelected = !isSelected);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(   ///Radio circle
          children: [
            Positioned(
              top: 0,
                right: 0,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),
                  ),
                  child: isSelected ? Center(child: CircleAvatar(radius: 5,backgroundColor: Colors.blue),) : null,
                ),
            ),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: widget.color.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(widget.icon, color: widget.color,size: 40,),
                  ),
                  const SizedBox(height: 8),
                  Text(widget.title, textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
