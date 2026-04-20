import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/routes/route_names.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/login_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/splash_screen.dart';

import '../../features/user_home_flow/presentation/availability_time_set_screen.dart';
import '../../features/user_home_flow/presentation/doctor_profile_screen.dart';
import '../../features/user_home_flow/presentation/doctor_search_screen.dart';
import '../../features/user_home_flow/presentation/home_screen.dart';
import '../../features/user_home_flow/presentation/parent/user_parent_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RouteNames.userParentScreen, // Use RouteNames or RoutePaths consistently

    routes: [
      GoRoute(
        path: RouteNames.splash,
        name: RouteNames.splash,
        pageBuilder: (context, state) => const MaterialPage(
          child: SplashScreen(),
        ),
      ),
      GoRoute(
        path: RouteNames.login,
        name: RouteNames.login,
        pageBuilder: (context, state) => const MaterialPage(
          child: LoginScreen(),
        ),
      ),

      //User Home Flow
      GoRoute(
        path: RouteNames.homeScreen,
        name: RouteNames.homeScreen,
        pageBuilder: (context, state) => const MaterialPage(
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        path: RouteNames.userParentScreen,
        name: RouteNames.userParentScreen,
        pageBuilder: (context, state) => const MaterialPage(
          child: UserParentScreen(),
        ),
      ),
      GoRoute(
        path: RouteNames.doctorProfileScreen,
        name: RouteNames.doctorProfileScreen,
        pageBuilder: (context, state) => const MaterialPage(
          child: DoctorProfileScreen(),
        ),
      ),

      GoRoute(
        path: RouteNames.findExpertise,
        name: RouteNames.findExpertise,
        pageBuilder: (context, state) => const MaterialPage(
          child: FindExpertiseScreen(),
        ),
      ),

      GoRoute(
        path: RouteNames.availabilityTimeSet,
        name: RouteNames.availabilityTimeSet,
        pageBuilder: (context, state) => const MaterialPage(
          child: AvailabilityTimeSetScreen(),
        ),
      ),
    ],

    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text(
          'Route not found: ${state.uri.path}',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ),

    debugLogDiagnostics: true,
  );
}