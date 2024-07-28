import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class KamariatiOutlinedButtonTheme {
  KamariatiOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: KamariatiColors.dark,
      side: const BorderSide(color: KamariatiColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: KamariatiColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: KamariatiSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(KamariatiSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: KamariatiColors.light,
      side: const BorderSide(color: KamariatiColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: KamariatiColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: KamariatiSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(KamariatiSizes.buttonRadius)),
    ),
  );
}
