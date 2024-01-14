import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stuntsync/features/authentication/screens/onboarding/onboarding.dart';
import 'package:stuntsync/utils/theme/theme.dart';

/// -- Class to setup themes, initial bindings, etc.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: SSTheme.lightTheme,
      darkTheme: SSTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}