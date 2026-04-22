import 'package:flutter/material.dart';
import 'package:medbridge_telemedicine/app/theme/text_field_theme.dart';
import 'package:medbridge_telemedicine/app/theme/text_theme.dart';

import 'appbar_theme.dart';
import 'bottom_sheet_theme.dart';
import 'checkbox_theme.dart';
import 'color_theme.dart';
import 'elevated_button_theme.dart';
import 'outlined_button_theme.dart';


class MyAppTheme {
  static final ThemeData _lightThemeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: ColorTheme.primary,
    disabledColor: ColorTheme.grey,
    textTheme: AppTextTheme.lightTextTheme,
    scaffoldBackgroundColor: ColorTheme.white,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    checkboxTheme: MyCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MyTextFieldTheme.lightInputDecorationTheme,
  );

  static final ThemeData _darkThemeData = ThemeData(
    brightness: Brightness.dark,
    primaryColor: ColorTheme.primary,
    disabledColor: ColorTheme.grey,
    textTheme: AppTextTheme.darkTextTheme,
    scaffoldBackgroundColor: ColorTheme.black,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    checkboxTheme: MyCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MyTextFieldTheme.darkInputDecorationTheme,
  );

  static ThemeData get lightTheme => _lightThemeData;
  static ThemeData get darkTheme => _darkThemeData;
}