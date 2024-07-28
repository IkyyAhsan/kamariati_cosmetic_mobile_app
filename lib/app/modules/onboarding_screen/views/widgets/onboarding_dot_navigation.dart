import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/modules/onboarding_screen/controllers/onboarding_screen_controller.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class KamariatiOnboardingDotNavigation extends StatelessWidget {
  const KamariatiOnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
  final dark = KamariatiHelperFunctions.isDarkMode(context);

    final onBoardingcontroller = Get.put(OnboardingScreenController());
    return Positioned(
      bottom: kBottomNavigationBarHeight + 140,
      left: 0,
      right: 0,
      child: Center(
        child: SmoothPageIndicator(
          onDotClicked: onBoardingcontroller.dotNavigationClick,
          controller: onBoardingcontroller.pageController,
          count: 3,
          effect: ExpandingDotsEffect(activeDotColor: dark ? KamariatiColors.light : KamariatiColors.black, dotHeight: 6),
        ),
      )
    );
  }
}