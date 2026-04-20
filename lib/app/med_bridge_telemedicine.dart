import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medbridge_telemedicine/app/routes/app_router.dart';
class MedBridgeTelemedicine extends StatelessWidget {
  const MedBridgeTelemedicine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }


}
