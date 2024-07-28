import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/theme/widget_themes/appbar_theme.dart';
import 'package:kamariati_cosmetic_project/app/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:kamariati_cosmetic_project/app/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:kamariati_cosmetic_project/app/utils/theme/widget_themes/chip_theme.dart';
import 'package:kamariati_cosmetic_project/app/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:kamariati_cosmetic_project/app/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:kamariati_cosmetic_project/app/utils/theme/widget_themes/text_field_theme.dart';
import 'package:kamariati_cosmetic_project/app/utils/theme/widget_themes/text_theme.dart';

import '../constants/colors.dart';

class KamariatiAppTheme {
  KamariatiAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: KamariatiColors.grey,
    brightness: Brightness.light,
    primaryColor: KamariatiColors.primary,
    textTheme: KamariatiTextTheme.lightTextTheme,
    chipTheme: KamariatiChipTheme.lightChipTheme,
    scaffoldBackgroundColor: KamariatiColors.white,
    appBarTheme: KamariatiAppBarTheme.lightAppBarTheme,
    checkboxTheme: KamariatiCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: KamariatiBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: KamariatiElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: KamariatiOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: KamariatiTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: KamariatiColors.grey,
    brightness: Brightness.dark,
    primaryColor: KamariatiColors.primary,
    textTheme: KamariatiTextTheme.darkTextTheme,
    chipTheme: KamariatiChipTheme.darkChipTheme,
    scaffoldBackgroundColor: KamariatiColors.black,
    appBarTheme: KamariatiAppBarTheme.darkAppBarTheme,
    checkboxTheme: KamariatiCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: KamariatiBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: KamariatiElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: KamariatiOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: KamariatiTextFormFieldTheme.darkInputDecorationTheme,
  );
}
