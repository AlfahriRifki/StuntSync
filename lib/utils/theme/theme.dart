import 'package:flutter/material.dart';
import 'package:stuntsync/utils/theme/custom_themes/appbar_theme.dart';
import 'package:stuntsync/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:stuntsync/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:stuntsync/utils/theme/custom_themes/chip_theme.dart';
import 'package:stuntsync/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:stuntsync/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:stuntsync/utils/theme/custom_themes/text_field_theme.dart';
import 'package:stuntsync/utils/theme/custom_themes/text_theme.dart';

import '../constants/colors.dart';

// SS = StuntSync

class SSTheme{
  SSTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: SStextTheme.lightTextTheme,
    chipTheme: SSChipTheme.lightChipTheme,
    appBarTheme: SSAppBarTheme.lightAppBarTheme,
    checkboxTheme: SSCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: SSBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: SSElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: SSOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: SSTextFromFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: SSColors.primaryBackground,
    textTheme: SStextTheme.darkTextTheme,
    chipTheme: SSChipTheme.darkChipTheme,
    appBarTheme: SSAppBarTheme.darkAppBarTheme,
    checkboxTheme: SSCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: SSBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: SSElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: SSOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: SSTextFromFieldTheme.darkInputDecorationTheme,
  );

}