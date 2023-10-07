import 'package:flutter/material.dart';

class AppChipTheme {
  AppChipTheme._();

  static ChipThemeData chipLightTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData chipDarkTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
    checkmarkColor: Colors.white,
  );
}
