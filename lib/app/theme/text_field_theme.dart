import 'package:flutter/material.dart';
import 'color_theme.dart';
import '../constants/app_properties_sizes.dart';

class MyTextFieldTheme {
  MyTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: ColorTheme.darkGrey,
    suffixIconColor: ColorTheme.darkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: AppPropertiesSizes.fontSizeMd, color: ColorTheme.black),
    hintStyle: const TextStyle().copyWith(fontSize: AppPropertiesSizes.fontSizeSm, color: ColorTheme.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: ColorTheme.black.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppPropertiesSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorTheme.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppPropertiesSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorTheme.grey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppPropertiesSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorTheme.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppPropertiesSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorTheme.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppPropertiesSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ColorTheme.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: ColorTheme.darkGrey,
    suffixIconColor: ColorTheme.darkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: AppPropertiesSizes.fontSizeMd, color: ColorTheme.white),
    hintStyle: const TextStyle().copyWith(fontSize: AppPropertiesSizes.fontSizeSm, color: ColorTheme.white),
    floatingLabelStyle: const TextStyle().copyWith(color: ColorTheme.white.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppPropertiesSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorTheme.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppPropertiesSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorTheme.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppPropertiesSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorTheme.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppPropertiesSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorTheme.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppPropertiesSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ColorTheme.warning),
    ),
  );

}