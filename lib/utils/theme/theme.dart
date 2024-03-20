import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    // colorSchemeSeed: Colors.purple,
    useMaterial3: true,
    brightness: Brightness.light,
    // primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.purple.shade50,
    fontFamily: GoogleFonts.barlow().fontFamily,
    textTheme: AppTextTheme.lightTextTheme,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    outlinedButtonTheme: AppOutlinedButton.lightOutlinedButtonTheme,
    elevatedButtonTheme: AppElevatedButton.lightElevatedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    // colorSchemeSeed: Colors.purple,
    useMaterial3: true,
    brightness: Brightness.dark,
    // primaryColor: Colors.blue,
    // scaffoldBackgroundColor: Colors.black,

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.grey.shade800.withAlpha(70),
    ),
    fontFamily: GoogleFonts.barlow().fontFamily,
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: AppElevatedButton.darkElevatedButtonTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    outlinedButtonTheme: AppOutlinedButton.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  );
}
