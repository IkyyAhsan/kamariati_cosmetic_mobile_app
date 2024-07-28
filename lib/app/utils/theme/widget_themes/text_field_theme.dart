import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import '../../constants/sizes.dart';

class KamariatiTextFormFieldTheme {
  KamariatiTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: KamariatiColors.darkGrey,
    suffixIconColor: KamariatiColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: KamariatiSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: KamariatiSizes.fontSizeMd, color: KamariatiColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: KamariatiSizes.fonKamariatiSizesm, color: KamariatiColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: KamariatiColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KamariatiSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: KamariatiColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KamariatiSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: KamariatiColors.grey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KamariatiSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: KamariatiColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KamariatiSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: KamariatiColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KamariatiSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: KamariatiColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: KamariatiColors.darkGrey,
    suffixIconColor: KamariatiColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: KamariatiSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: KamariatiSizes.fontSizeMd, color: KamariatiColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: KamariatiSizes.fonKamariatiSizesm, color: KamariatiColors.white),
    floatingLabelStyle: const TextStyle().copyWith(color: KamariatiColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KamariatiSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: KamariatiColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KamariatiSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: KamariatiColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KamariatiSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: KamariatiColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KamariatiSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: KamariatiColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(KamariatiSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: KamariatiColors.warning),
    ),
  );
}
