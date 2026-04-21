import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/routes/route_names.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/login_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/role_selection_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/sign_up_doctor_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/sign_up_health_worker_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/sign_up_patient_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/splash_screen.dart';
import 'package:medbridge_telemedicine/features/settings/presentation/screens/settings_screen.dart';

import '../../features/user_home_flow/presentation/availability_time_set_screen.dart';
import '../../features/user_home_flow/presentation/doctor_profile_screen.dart';
import '../../features/user_home_flow/presentation/doctor_search_screen.dart';
import '../../features/user_home_flow/presentation/home_screen.dart';
import '../../features/user_home_flow/presentation/parent/user_parent_screen.dart';

import '../../features/bookings/presentations/screens/appointment_confirmation.dart';
import '../../features/bookings/presentations/screens/my_appointment_screen.dart';
import '../../features/bookings/presentations/screens/booking_screen.dart';

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
      GoRoute(
        path: RoutePaths.booking,
        name: RouteNames.booking,
        pageBuilder: (context, state) => const MaterialPage(
          child: BookingScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.appointment,
        name: RouteNames.appointment,
        pageBuilder: (context, state) => const MaterialPage(
          child: MyAppointmentsScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.appointmentConfirmation,
        name: RouteNames.appointmentConfirmation,
        pageBuilder: (context, state) => const MaterialPage(
          child: AppointmentConfirmationScreen(),
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
        path: RouteNames.findExpertise,
        name: RouteNames.findExpertise,
        pageBuilder: (context, state) => const MaterialPage(
          child: FindExpertiseScreen(),
        path: RoutePaths.signUpHealthWorker,
        name: RouteNames.signUpHealthWorker,
        pageBuilder: (context, state) => const MaterialPage(
          child: SignUpHealthWorkerScreen(),
        ),
      ),

      GoRoute(
        path: RouteNames.availabilityTimeSet,
        name: RouteNames.availabilityTimeSet,
        pageBuilder: (context, state) => const MaterialPage(
          child: AvailabilityTimeSetScreen(),
        ),
      ),
        path: RoutePaths.settingsScreen,
        name: RouteNames.settingsScreen,
        pageBuilder: (context, state) => const MaterialPage(
          child: SettingsScreen(),
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