import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/modules/onboarding_screen/controllers/onboarding_screen_controller.dart';
import 'package:kamariati_cosmetic_project/app/modules/onboarding_screen/views/widgets/horizontal_scrollable_page.dart';
import 'package:kamariati_cosmetic_project/app/modules/onboarding_screen/views/widgets/onboarding_dot_navigation.dart';
import 'package:kamariati_cosmetic_project/app/modules/onboarding_screen/views/widgets/onboarding_next_button.dart';
import 'package:kamariati_cosmetic_project/app/modules/onboarding_screen/views/widgets/onboarding_skip_button.dart';

class OnboardingScreenView extends GetView<OnboardingScreenController> {
  const OnboardingScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    final onBoardingController = Get.put(OnboardingScreenController());
    return Scaffold(
      body: Stack(
        children: [
          KamariatiScrollablePages(onboardingScreenController: onBoardingController),

          const KamariatiOnboardingDotNavigation(),

          const KamariatiOnboardingNextButton(),        

          const KamariatiOnboardingSkipButton(),        
        ],
      ),
    );
  }
}