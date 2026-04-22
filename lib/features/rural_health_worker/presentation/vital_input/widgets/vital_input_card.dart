import 'package:flutter/material.dart';

class VitalInputCard extends StatefulWidget {
  final String title;
  final IconData icon;
  final String value;
  final Color color;
  final String tag;
  final TextEditingController? controller;

  const VitalInputCard({
    super.key,
    required this.title,
    required this.value,
    required this.tag,
    required this.icon,
    required this.color,
    this.controller,
  });

  @override
  State<VitalInputCard> createState() => _VitalInputCardState();
}

class _VitalInputCardState extends State<VitalInputCard> {



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: widget.color.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(widget.icon, color: widget.color, size: 18),
              ),
              const SizedBox(width: 10),
              Text(
                widget.title,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ///value


          TextField(
            keyboardType: TextInputType.number,
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: widget.value,
              suffixText: widget.tag,
              filled: true,
              fillColor: Colors.grey.shade100,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
