import 'package:flutter/material.dart';
import 'package:stuntsync/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:stuntsync/utils/theme/custom_themes/text_theme.dart';

// SS = StuntSync

class SSTheme{
  SSTheme._();

  static ThemeData LightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: SStextTheme.lightTextTheme,
    elevatedButtonTheme: SSElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData DarkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: SStextTheme.darkTextTheme,
    elevatedButtonTheme: SSElevatedButtonTheme.darkElevatedButtonTheme,
  );

}