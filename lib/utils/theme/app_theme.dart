import 'package:dash_commerce/utils/theme/custom_theme/app_appbar_theme.dart';
import 'package:dash_commerce/utils/theme/custom_theme/app_bottom_sheet_theme.dart';
import 'package:dash_commerce/utils/theme/custom_theme/app_check_box_theme.dart';
import 'package:dash_commerce/utils/theme/custom_theme/app_chip_theme.dart';
import 'package:dash_commerce/utils/theme/custom_theme/app_elevated_button_theme.dart';
import 'package:dash_commerce/utils/theme/custom_theme/app_input_decoration_theme.dart';
import 'package:dash_commerce/utils/theme/custom_theme/app_outlined_button_theme.dart';
import 'package:dash_commerce/utils/theme/custom_theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppAppBarTheme.appBarLightTheme,
    bottomSheetTheme: AppBottomSheetTheme.bottomSheetLightTheme,
    checkboxTheme: AppCheckBoxTheme.checkboxLightTheme,
    chipTheme: AppChipTheme.chipLightTheme,
    inputDecorationTheme: AppTextFieldTheme.inputDecorationLightTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.outlinedButtonLightTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.elevatedButtonLightTheme,
    textTheme: AppTextTheme.textLightTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppAppBarTheme.appBarDarkTheme,
    bottomSheetTheme: AppBottomSheetTheme.bottomSheetDarkTheme,
    checkboxTheme: AppCheckBoxTheme.checkboxDarkTheme,
    chipTheme: AppChipTheme.chipDarkTheme,
    inputDecorationTheme: AppTextFieldTheme.inputDecorationDarkTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.outlinedButtonDarkTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.elevatedButtonDarkTheme,
    textTheme: AppTextTheme.textDarkTheme,
  );
}
