import 'package:flutter/material.dart';
import 'color_theme.dart';
import '../constants/app_properties_sizes.dart';
class MyElevatedButtonTheme {
  MyElevatedButtonTheme._();

  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorTheme.light,
      backgroundColor: ColorTheme.primary,
      disabledForegroundColor: ColorTheme.darkGrey,
      disabledBackgroundColor: ColorTheme.buttonDisabled,
      side: const BorderSide(color: ColorTheme.light),
      padding: const EdgeInsets.symmetric(vertical: AppPropertiesSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: ColorTheme.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppPropertiesSizes.buttonRadius)),
    ),
  );


  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorTheme.light,
      backgroundColor: ColorTheme.primary,
      disabledForegroundColor: ColorTheme.darkGrey,
      disabledBackgroundColor: ColorTheme.darkerGrey,
      side: const BorderSide(color: ColorTheme.primary),
      padding: const EdgeInsets.symmetric(vertical: AppPropertiesSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: ColorTheme.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppPropertiesSizes.buttonRadius)),
    ),
  );

}