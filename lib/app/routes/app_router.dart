import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/routes/route_names.dart';
import 'package:medbridge_telemedicine/app/routes/route_paths.dart';

import 'package:medbridge_telemedicine/features/auth/presentations/screens/login_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/splash_screen.dart';

import '../../features/doctor/data/models/case_model.dart';
import '../../features/doctor/presentations/case-details/screens/case_details_screen.dart';
import '../../features/doctor/presentations/common/bottom_navbar_screen.dart';
import '../../features/doctor/presentations/home/dashboard_screen.dart';
import '../../features/doctor/presentations/incoming-case/incoming_case_screen.dart';







class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePaths.dashboard,

    routes: [

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


      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return BottomNavBarScreen(shell: navigationShell);
        },
        branches: [

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RoutePaths.dashboard,
                name: RouteNames.dashboard,
                builder: (context, state) => const DashboardScreen(),
              ),
            ],
          ),



          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RoutePaths.booking,
                name: RoutePaths.booking,
                builder: (context, state) => const IncomingCaseScreen(),

                routes: [
                  GoRoute(
                    path: 'case-detail', //
                    builder: (context, state) {
                      final caseData = state.extra as CaseModel;

                      return CaseDetailScreen(caseData: caseData);
                    },
                  ),
                ],
              ),
            ],
          ),


          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/chat',
                builder: (context, state) => const Scaffold(
                  body: Center(child: Text("Chat Screen")),
                ),
              ),
            ],
          ),

          // 👤 PROFILE
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => const Scaffold(
                  body: Center(child: Text("Profile Screen")),
                ),
              ),
            ],
          ),
        ],
      ),
    ],

    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Route not found: ${state.uri.path}'),
      ),
    ),
  );
}