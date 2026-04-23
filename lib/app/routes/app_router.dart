import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/routes/route_names.dart';
import 'package:medbridge_telemedicine/app/routes/route_paths.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/forgot_password_screen.dart';

import 'package:medbridge_telemedicine/features/auth/presentations/screens/login_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/onboarding/onboarding_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/password_reset_success_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/reset_password_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/role_selection_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/sign_up_doctor_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/sign_up_health_worker_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/sign_up_patient_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/splash_screen.dart';
import 'package:medbridge_telemedicine/features/auth/presentations/screens/verify_otp_screen.dart';
import 'package:medbridge_telemedicine/features/common/presentations/screens/user_profile_screen.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/symptoms/screens/symptoms_screen.dart';
import 'package:medbridge_telemedicine/features/rural_health_worker/presentation/vital_input/screens/vitals_input_screen.dart';
import '../../features/rural_health_worker/presentation/new_patient_case/screens/new_patient_case_screen.dart';
import '../../features/rural_health_worker/presentation/upload_reports/screens/upload_report_screen.dart';
import 'package:medbridge_telemedicine/features/settings/presentation/screens/settings_screen.dart';

import '../../features/user_home_flow/presentation/availability_time_set_screen.dart';
import '../../features/user_home_flow/presentation/doctor_profile_screen.dart';
import '../../features/user_home_flow/presentation/doctor_search_screen.dart';
import '../../features/user_home_flow/presentation/home_screen.dart';
import '../../features/user_home_flow/presentation/parent/user_parent_screen.dart';

import '../../features/bookings/presentations/screens/appointment_confirmation.dart';


import 'package:medbridge_telemedicine/features/doctor/presentations/screens/appointment_schedule_screen.dart';
import 'package:medbridge_telemedicine/features/doctor/presentations/screens/prescription_writing_screen.dart';
import '../../features/doctor/data/models/case_model.dart';
import '../../features/doctor/presentations/case-details/screens/case_details_screen.dart';
import '../../features/doctor/presentations/common/bottom_navbar_screen.dart';
import '../../features/doctor/presentations/home/dashboard_screen.dart';
import '../../features/doctor/presentations/incoming-case/incoming_case_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePaths.splash,

    routes: [
      GoRoute(
        path: RoutePaths.onboard,
        name: RouteNames.onboard,
        pageBuilder: (context, state) =>
        const MaterialPage(child: OnboardingScreen()),
      ),
      GoRoute(
        path: RoutePaths.splash,
        name: RouteNames.splash,
        pageBuilder: (context, state) =>
            const MaterialPage(child: SplashScreen()),
      ),

      GoRoute(
        path: RoutePaths.passwordReset,
        name: RouteNames.passwordReset,
        pageBuilder: (context, state) =>
        const MaterialPage(child: PasswordResetSuccessScreen()),
      ),

      GoRoute(
        path: RouteNames.login,
        name: RouteNames.login,
        pageBuilder: (context, state) =>
            const MaterialPage(child: LoginScreen()),
      ),

      GoRoute(
        path: RouteNames.forgotPassword,
        name: RouteNames.forgotPassword,
        pageBuilder: (context, state) =>
        const MaterialPage(child: ForgotPasswordScreen()),
      ),

      GoRoute(
        path: RouteNames.resetPassword,
        name: RouteNames.resetPassword,
        pageBuilder: (context, state) =>
        const MaterialPage(child: ResetPasswordScreen()),
      ),

      GoRoute(
        path: RouteNames.verifyOtp,
        name: RouteNames.verifyOtp,
        pageBuilder: (context, state) =>
        const MaterialPage(child: VerifyOtpScreen()),
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

      GoRoute(
        path: RoutePaths.appointmentConfirmation,
        name: RouteNames.appointmentConfirmation,
        pageBuilder: (context, state) =>
            const MaterialPage(child: AppointmentConfirmationScreen()),
      ),

      //User Home Flow
      GoRoute(
        path: RouteNames.homeScreen,
        name: RouteNames.homeScreen,
        pageBuilder: (context, state) =>
            const MaterialPage(child: HomeScreen()),
      ),
      GoRoute(
        path: RouteNames.userParentScreen,
        name: RouteNames.userParentScreen,
        pageBuilder: (context, state) =>
            const MaterialPage(child: UserParentScreen()),
      ),
      GoRoute(
        path: RouteNames.doctorProfileScreen,
        name: RouteNames.doctorProfileScreen,
        pageBuilder: (context, state) =>
            const MaterialPage(child: DoctorProfileScreen()),
      ),
      GoRoute(
        path: RoutePaths.roleSelection,
        name: RouteNames.roleSelection,
        pageBuilder: (context, state) =>
            const MaterialPage(child: RoleSelectionScreen()),
      ),

      GoRoute(
        path: RoutePaths.userProfile,
        name: RouteNames.userProfile,
        pageBuilder: (context, state) =>
        const MaterialPage(child: UserProfileScreen()),
      ),

      GoRoute(
        path: RoutePaths.signUpPatient,
        name: RouteNames.signUpPatient,
        pageBuilder: (context, state) =>
            const MaterialPage(child: SignUpPatientScreen()),
      ),

      GoRoute(
        path: RoutePaths.signUpDoctor,
        name: RouteNames.signUpDoctor,
        pageBuilder: (context, state) =>
            const MaterialPage(child: SignUpDoctorScreen()),
      ),

      GoRoute(
        path: RouteNames.findExpertise,
        name: RouteNames.findExpertise,
        pageBuilder: (context, state) =>
            const MaterialPage(child: FindExpertiseScreen()),
      ),
      GoRoute(
        path: RoutePaths.signUpHealthWorker,
        name: RouteNames.signUpHealthWorker,
        pageBuilder: (context, state) =>
            const MaterialPage(child: SignUpHealthWorkerScreen()),
      ),
      GoRoute(
        path: RoutePaths.symptoms,
        name: RoutePaths.symptoms,
        pageBuilder: (context, state) =>
            const MaterialPage(child: SymptomsScreen()),
      ),

      GoRoute(
        path: RoutePaths.new_case,
        name: RouteNames.new_case,
        pageBuilder: (context, state) =>
            const MaterialPage(child: UploadPatientCaseScreen()),
      ),

      GoRoute(
        path: RoutePaths.vital_input,
        name: RouteNames.vital_input,
        pageBuilder: (context, state) =>
            const MaterialPage(child: VitalsInputScreen()),
      ),
      GoRoute(
        path: RoutePaths.upload_reports,
        name: RouteNames.upload_reports,
        pageBuilder: (context, state) =>
            const MaterialPage(child: UploadReportScreen()),
      ),

      GoRoute(
        path: RouteNames.availabilityTimeSet,
        name: RouteNames.availabilityTimeSet,
        pageBuilder: (context, state) =>
            const MaterialPage(child: AvailabilityTimeSetScreen()),
      ),
      GoRoute(
        path: RoutePaths.settingsScreen,
        name: RouteNames.settingsScreen,
        pageBuilder: (context, state) =>
            const MaterialPage(child: SettingsScreen()),
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
                path: RoutePaths.appointmentShedule,
                name: RoutePaths.appointmentShedule,
                builder: (context, state) => const AppointmentScheduleScreen(),
              ),
            ],
          ),

          // 👤 PROFILE
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) =>
                    const Scaffold(body: Center(child: Text("Profile Screen"))),
              ),
            ],
          ),
        ],
      ),
    ],

    errorBuilder: (context, state) => Scaffold(
      body: Center(child: Text('Route not found: ${state.uri.path}')),
    ),
  );
}
