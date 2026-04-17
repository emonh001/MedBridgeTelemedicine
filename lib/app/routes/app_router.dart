import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/routes/route_names.dart';
import 'package:medbridge_telemedicine/app/routes/route_paths.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/login_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/splash_screen.dart';

import 'package:medbridge_telemedicine/features/doctor/presentations/screens/appointment_schedule_screen.dart';
import 'package:medbridge_telemedicine/features/doctor/presentations/screens/prescription_writing_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePaths.splash,

    routes: [
      // Root / Authentication Wrapper
      GoRoute(
        path: RoutePaths.splash,
        name: RouteNames.splash,
        pageBuilder: (context, state) =>
            const MaterialPage(child: SplashScreen()),
      ),

      GoRoute(
        path: RoutePaths.login,
        name: RouteNames.login,
        pageBuilder: (context, state) =>
            const MaterialPage(child: LoginScreen()),
      ),

      GoRoute(
        path: RoutePaths.appointment,
        name: RouteNames.appointment,
        pageBuilder: (context, state) =>
            const MaterialPage(child: AppointmentScheduleScreen()),
      ),

        GoRoute(
        path: RoutePaths.prescription,
        name: RouteNames.prescription,
        pageBuilder: (context, state) =>
            const MaterialPage(child: PrescriptionWritingScreen()),
      ),
    ],

    // Error handling
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text(
          'Route not found: ${state.uri.path}',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ),

    debugLogDiagnostics: true, // Remove in production
  );
}
