import 'package:flutter/material.dart';

import '../constants/app_properties_sizes.dart';
import 'color_theme.dart';

class MyAppBarTheme{
  MyAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ColorTheme.black, size: AppPropertiesSizes.iconMd),
    actionsIconTheme: IconThemeData(color: ColorTheme.black, size: AppPropertiesSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: ColorTheme.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ColorTheme.white, size: AppPropertiesSizes.iconMd),
    actionsIconTheme: IconThemeData(color: ColorTheme.white, size: AppPropertiesSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: ColorTheme.white),
  );
}