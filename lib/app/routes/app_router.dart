import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/routes/route_names.dart';
import 'package:medbridge_telemedicine/app/routes/route_paths.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/login_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/role_selection_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/sign_up_doctor_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/sign_up_health_worker_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/sign_up_patient_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/splash_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePaths.splash,

    routes: [
      // Root / Authentication Wrapper
      GoRoute(
        path: RoutePaths.splash,
        name: RouteNames.splash,
        pageBuilder: (context, state) => const MaterialPage(
          child: SplashScreen(),
        ),
      ),

      GoRoute(
        path: RoutePaths.login,
        name: RouteNames.login,
        pageBuilder: (context, state) => const MaterialPage(
          child: LoginScreen(),
        ),
      ),

      GoRoute(
        path: RoutePaths.roleSelection,
        name: RouteNames.roleSelection,
        pageBuilder: (context, state) => const MaterialPage(
          child: RoleSelectionScreen(),
        ),
      ),

      GoRoute(
        path: RoutePaths.signUpPatient,
        name: RouteNames.signUpPatient,
        pageBuilder: (context, state) => const MaterialPage(
          child: SignUpPatientScreen(),
        ),
      ),

      GoRoute(
        path: RoutePaths.signUpDoctor,
        name: RouteNames.signUpDoctor,
        pageBuilder: (context, state) => const MaterialPage(
          child: SignUpDoctorScreen(),
        ),
      ),

      GoRoute(
        path: RoutePaths.signUpHealthWorker,
        name: RouteNames.signUpHealthWorker,
        pageBuilder: (context, state) => const MaterialPage(
          child: SignUpHealthWorkerScreen(),
        ),
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