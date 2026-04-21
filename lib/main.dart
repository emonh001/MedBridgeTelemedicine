import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:medbridge_telemedicine/app/med_bridge_telemedicine.dart';
import 'app/view_models/app_viewmodel.dart';

void main() {
  runApp(
    MultiProvider(
      providers: AppViewModels.viewModels,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const MedBridgeTelemedicine();
        },
      ),
    ),
  );
}
