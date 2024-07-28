import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';

class KamariatiBottomSheetTheme {
  KamariatiBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: KamariatiColors.white,
    modalBackgroundColor: KamariatiColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: KamariatiColors.black,
    modalBackgroundColor: KamariatiColors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
