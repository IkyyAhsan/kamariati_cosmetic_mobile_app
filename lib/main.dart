import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/theme/theme.dart';
import 'package:kamariati_cosmetic_project/firebase_options.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (FirebaseApp value) => Get.put(AuthenticationRepository())
  );
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
