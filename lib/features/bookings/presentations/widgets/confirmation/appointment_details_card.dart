import 'package:flutter/material.dart';

class AppointmentDetailsCard extends StatelessWidget {
  const AppointmentDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8F0FF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Color(0xFF1A6BFF),
                    size: 26,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1A6BFF).withOpacity(0.08),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        'CARDIOLOGIST',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1A6BFF),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Dr. Aris Thorne',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1A1A2E),
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.verified,
                          size: 12,
                          color: Color(0xFF1A6BFF),
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Verified Specialist',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF6B7280),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: Color(0xFFF0F4F8)),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: const [
                Expanded(
                  child: _InfoTile(
                    icon: Icons.calendar_today_outlined,
                    label: 'DATE',
                    value: 'Oct 24, 2023',
                  ),
                ),
                SizedBox(
                  width: 1,
                  height: 40,
                  child: ColoredBox(color: Color(0xFFF0F4F8)),
                ),
                Expanded(
                  child: _InfoTile(
                    icon: Icons.access_time_outlined,
                    label: 'TIME',
                    value: '09:30 AM',
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: Color(0xFFF0F4F8)),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF6B6B).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.location_on_outlined,
                    color: Color(0xFFFF6B6B),
                    size: 18,
                  ),
                ),
                const SizedBox(width: 12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Medical Center Plaza',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1A2E),
                      ),
                    ),
                    Text(
                      'Suite 102, 128 Health Boulevard, SF',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF6B7280),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: Color(0xFFF0F4F8)),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8FAFF),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFE8EDF2)),
                  ),
                  child: CustomPaint(painter: _QrCodePainter()),
                ),
                const SizedBox(height: 10),
                const Text(
                  'SHOW QR AT CHECK-IN',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFADB5BD),
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Color(0xFFADB5BD),
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(icon, size: 14, color: const Color(0xFF1A6BFF)),
              const SizedBox(width: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1A1A2E),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _QrCodePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF1A1A2E)
      ..style = PaintingStyle.fill;

    final cellSize = size.width / 10;

    _drawCornerBlock(canvas, paint, 1 * cellSize, 1 * cellSize, 3 * cellSize);
    _drawCornerBlock(canvas, paint, 6 * cellSize, 1 * cellSize, 3 * cellSize);
    _drawCornerBlock(canvas, paint, 1 * cellSize, 6 * cellSize, 3 * cellSize);

    const dataCells = [
      [5, 4],
      [6, 4],
      [8, 4],
      [5, 5],
      [7, 5],
      [8, 5],
      [5, 6],
      [6, 7],
      [8, 6],
      [5, 8],
      [7, 8],
      [8, 7],
      [4, 5],
      [4, 6],
      [4, 8],
    ];

    for (final cell in dataCells) {
      canvas.drawRect(
        Rect.fromLTWH(
          cell[0] * cellSize,
          cell[1] * cellSize,
          cellSize * 0.9,
          cellSize * 0.9,
        ),
        paint,
      );
    }
  }

  void _drawCornerBlock(
    Canvas canvas,
    Paint paint,
    double x,
    double y,
    double size,
  ) {
    canvas.drawRect(Rect.fromLTWH(x, y, size, size), paint);

    final whitePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawRect(
      Rect.fromLTWH(x + size * 0.2, y + size * 0.2, size * 0.6, size * 0.6),
      whitePaint,
    );
    canvas.drawRect(
      Rect.fromLTWH(x + size * 0.35, y + size * 0.35, size * 0.3, size * 0.3),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
