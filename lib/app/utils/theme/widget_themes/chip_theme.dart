import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class KamariatiChipTheme {
  KamariatiChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: KamariatiColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: KamariatiColors.black),
    selectedColor: KamariatiColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: KamariatiColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: KamariatiColors.darkerGrey,
    labelStyle: TextStyle(color: KamariatiColors.white),
    selectedColor: KamariatiColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: KamariatiColors.white,
  );
}
