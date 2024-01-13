import 'package:flutter/material.dart';
import 'package:stuntsync/utils/theme/theme.dart';

/// -- Class to setup themes, initial bindings, etc.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: SSTheme.lightTheme,
      darkTheme: SSTheme.darkTheme,
    );
  }
}