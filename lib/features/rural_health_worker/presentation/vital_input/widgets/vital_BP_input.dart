import 'package:flutter/material.dart';

class VitalBPInput extends StatefulWidget {
  final String title;
  final IconData icon;
  final Color color;
  final String tag;

  const VitalBPInput({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.tag,
  });

  @override
  State<VitalBPInput> createState() => _VitalBPInputState();
}

class _VitalBPInputState extends State<VitalBPInput> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();


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
          /// ICON
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

          const SizedBox(height: 12),

          /// INPUT
          Row(
            children: [
              Expanded(child: _inputBox(controller1, "Value 1")),
              const SizedBox(width: 10),
              Expanded(child: _inputBox(controller2, "Value 2")),
            ],
          ),
        ],
      ),
    );
  }

  Widget _inputBox(TextEditingController controller, String title) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: title,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        ),
      ),
    );
  }
  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

}