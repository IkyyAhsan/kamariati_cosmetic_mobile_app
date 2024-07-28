import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/theme/theme.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: KamariatiTexts.appName,
      themeMode: ThemeMode.system,
      theme: KamariatiAppTheme.lightTheme,
      darkTheme: KamariatiAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
