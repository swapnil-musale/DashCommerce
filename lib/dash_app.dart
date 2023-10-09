import 'package:dash_commerce/features/authentication/screens/onboarding_screen.dart';
import 'package:dash_commerce/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class DashApp extends StatelessWidget {
  const DashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dash Commerce',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
