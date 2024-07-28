import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/routes/app_pages.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(initState: (_) {
      Timer(const Duration(seconds: 3), () {
        Get.offAllNamed(Routes.ONBOARDING_SCREEN);
      });
    }, builder: (context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  KamariatiImages.splashAppLogo,
                  width: 300,
                  height: 200,
                  fit: BoxFit.contain,),
              ),
                verticalSpace(16),
            ],
          ),
          ),
        );
    });
  }
}
