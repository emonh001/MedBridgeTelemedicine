import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/routes/route_names.dart';

class AppointmentConfirmationScreen extends StatelessWidget {
  const AppointmentConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _viewMyBookings() async {
      context.pushNamed(RouteNames.appointment);
    }
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: const Color(0xFF1A6BFF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.medical_services,
                  color: Colors.white, size: 16),
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
            icon: const Icon(Icons.notifications_outlined,
                color: Color(0xFF1A1A2E)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),

            // Success Icon
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFF00C896),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF00C896).withOpacity(0.3),
                    blurRadius: 24,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: const Icon(Icons.check, color: Colors.white, size: 40),
            ),
            const SizedBox(height: 20),

            const Text(
              'Appointment Confirmed!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1A1A2E),
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Your session with Dr. Aris Thorne has been successfully scheduled.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6B7280),
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Appointment Details Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
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
                    // Doctor Info
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
                            child: const Icon(Icons.person,
                                color: Color(0xFF1A6BFF), size: 26),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
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
                                children: [
                                  const Icon(Icons.verified,
                                      size: 12, color: Color(0xFF1A6BFF)),
                                  const SizedBox(width: 4),
                                  const Text(
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

                    // Date & Time
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Expanded(
                            child: _buildInfoTile(
                              Icons.calendar_today_outlined,
                              'DATE',
                              'Oct 24, 2023',
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 40,
                            color: const Color(0xFFF0F4F8),
                          ),
                          Expanded(
                            child: _buildInfoTile(
                              Icons.access_time_outlined,
                              'TIME',
                              '09:30 AM',
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Divider(height: 1, color: Color(0xFFF0F4F8)),

                    // Location
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
                            child: const Icon(Icons.location_on_outlined,
                                color: Color(0xFFFF6B6B), size: 18),
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

                    // QR Code Area
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
                            child: CustomPaint(
                              painter: _QRCodePainter(),
                            ),
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
              ),
            ),
            const SizedBox(height: 16),

            // Add to Calendar Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.calendar_month_outlined,
                    color: Color(0xFF1A6BFF), size: 18),
                label: const Text(
                  'Add to Calendar',
                  style: TextStyle(
                    color: Color(0xFF1A6BFF),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: const BorderSide(color: Color(0xFF1A6BFF)),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // View My Bookings Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  _viewMyBookings();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1A6BFF),
                  minimumSize: const Size(double.infinity, 52),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 0,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'View My Bookings',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            TextButton(
              onPressed: () {},
              child: const Text(
                'Go to Dashboard',
                style: TextStyle(
                  color: Color(0xFF6B7280),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );

  }


  Widget _buildInfoTile(IconData icon, String label, String value) {
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

class _QRCodePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF1A1A2E)
      ..style = PaintingStyle.fill;

    // Draw simplified QR-like pattern
    final cellSize = size.width / 10;

    // Corners
    _drawCornerBlock(canvas, paint, 1 * cellSize, 1 * cellSize, 3 * cellSize);
    _drawCornerBlock(canvas, paint, 6 * cellSize, 1 * cellSize, 3 * cellSize);
    _drawCornerBlock(canvas, paint, 1 * cellSize, 6 * cellSize, 3 * cellSize);

    // Random data cells
    final dataCells = [
      [5, 4], [6, 4], [8, 4], [5, 5], [7, 5], [8, 5],
      [5, 6], [6, 7], [8, 6], [5, 8], [7, 8], [8, 7],
      [4, 5], [4, 6], [4, 8],
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
      Canvas canvas, Paint paint, double x, double y, double size) {
    // Outer
    canvas.drawRect(Rect.fromLTWH(x, y, size, size), paint);
    // Inner white
    final whitePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawRect(
      Rect.fromLTWH(x + size * 0.2, y + size * 0.2, size * 0.6, size * 0.6),
      whitePaint,
    );
    // Center dot
    canvas.drawRect(
      Rect.fromLTWH(x + size * 0.35, y + size * 0.35, size * 0.3, size * 0.3),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;


}
