import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import '../../constants/colors.dart';

class KamariatiAppBarTheme{
  KamariatiAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: KamariatiColors.black, size: KamariatiSizes.iconMd),
    actionsIconTheme: IconThemeData(color: KamariatiColors.black, size: KamariatiSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: KamariatiColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: KamariatiColors.black, size: KamariatiSizes.iconMd),
    actionsIconTheme: IconThemeData(color: KamariatiColors.white, size: KamariatiSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: KamariatiColors.white),
  );
}