import 'package:flutter/material.dart';
import 'color_theme.dart';
class MyChipTheme {
  MyChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: ColorTheme.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: ColorTheme.black),
    selectedColor: ColorTheme.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ColorTheme.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: ColorTheme.darkerGrey,
    labelStyle: TextStyle(color: ColorTheme.white),
    selectedColor: ColorTheme.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ColorTheme.white,
  );
}