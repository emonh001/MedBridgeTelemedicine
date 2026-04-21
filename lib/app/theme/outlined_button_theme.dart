import 'package:flutter/material.dart';
import 'color_theme.dart';
import '../constants/app_properties_sizes.dart';
class MyOutlinedButtonTheme {
  MyOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorTheme.dark,
      side: const BorderSide(color: ColorTheme.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: ColorTheme.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: AppPropertiesSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppPropertiesSizes.buttonRadius)),
    ),
  );


  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ColorTheme.light,
      side: const BorderSide(color: ColorTheme.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: ColorTheme.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: AppPropertiesSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppPropertiesSizes.buttonRadius)),
    ),
  );

}