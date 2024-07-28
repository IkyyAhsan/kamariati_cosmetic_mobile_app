import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class KamariatiElevatedButtonTheme {
  KamariatiElevatedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: KamariatiColors.light,
      backgroundColor: KamariatiColors.primary,
      disabledForegroundColor: KamariatiColors.darkGrey,
      disabledBackgroundColor: KamariatiColors.buttonDisabled,
      side: const BorderSide(color: KamariatiColors.primary),
      padding: const EdgeInsets.symmetric(vertical: KamariatiSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: KamariatiColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(KamariatiSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: KamariatiColors.light,
      backgroundColor: KamariatiColors.primary,
      disabledForegroundColor: KamariatiColors.darkGrey,
      disabledBackgroundColor: KamariatiColors.darkerGrey,
      side: const BorderSide(color: KamariatiColors.primary),
      padding: const EdgeInsets.symmetric(vertical: KamariatiSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: KamariatiColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(KamariatiSizes.buttonRadius)),
    ),
  );
}
