import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/routes/route_names.dart';
import 'package:medbridge_telemedicine/app/routes/route_paths.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/login_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/splash_screen.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/screens/symptoms_screen.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/screens/upload_patient_case_screen.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/screens/upload_report_screen.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/screens/vitals_input_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePaths.symptoms,

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
      GoRoute(path: RoutePaths.symptoms,
          name: RoutePaths.symptoms,
          pageBuilder: (context, state) => const MaterialPage(child: SymptomsScreen())
      ),

      GoRoute(path: RoutePaths.new_case,
        name: RouteNames.new_case,
        pageBuilder: (context, state) => const MaterialPage(child: UploadPatientCaseScreen())
      ),


     GoRoute(path: RoutePaths.vital_input,
       name: RouteNames.vital_input,
       pageBuilder: (context, state) => const MaterialPage(child: VitalsInputScreen())
     ),
      GoRoute(path: RoutePaths.upload_reports,
        name: RouteNames.upload_reports,
        pageBuilder: (context, state) => const MaterialPage(child: UploadReportScreen())
      )



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