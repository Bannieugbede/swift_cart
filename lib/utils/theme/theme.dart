import 'package:flutter/material.dart';
import 'package:swift_cart/utils/theme/custom_themes/appbar_theme.dart';
import 'package:swift_cart/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:swift_cart/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:swift_cart/utils/theme/custom_themes/chip_theme.dart';
import 'package:swift_cart/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:swift_cart/utils/theme/custom_themes/outlined_button.dart';
import 'package:swift_cart/utils/theme/custom_themes/text_field_theme.dart';
import 'package:swift_cart/utils/theme/custom_themes/text_theme.dart';

class ZAppTheme {
  ZAppTheme._();

  //App Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.green,
    textTheme: ZTextTheme.lightTextTheme,
    chipTheme: ZChipTheme.lightChipThemeData,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: ZAppBarTheme.lightAppBarTheme,
    checkboxTheme: ZCheckboxTheme.lightCheckBoxThemeData,
    bottomSheetTheme: ZBottomSheetTheme.lightBottomSheetThemeData,
    elevatedButtonTheme: ZElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: ZOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ZTextFormFieldTheme.lightInputDecorationTheme,
  );

  //App Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.green,
    textTheme: ZTextTheme.darkTextTheme,
    chipTheme: ZChipTheme.darkChipThemeData,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: ZAppBarTheme.darkAppBarTheme,
    checkboxTheme: ZCheckboxTheme.darkCheckBoxThemeData,
    bottomSheetTheme: ZBottomSheetTheme.darkBottomSheetThemeData,
    elevatedButtonTheme: ZElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ZOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ZTextFormFieldTheme.darkInputDecorationTheme,
  );
}
