import 'package:flutter/material.dart';
import 'package:medbridge_telemedicine/app/routes/app_router.dart';
import 'package:medbridge_telemedicine/app/theme/app_theme.dart';



class MedBridgeTelemedicineApp extends StatelessWidget {
  const MedBridgeTelemedicineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }


}
