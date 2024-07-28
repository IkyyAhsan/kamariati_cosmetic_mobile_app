import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/modules/onboarding_screen/controllers/onboarding_screen_controller.dart';
import 'package:kamariati_cosmetic_project/app/modules/onboarding_screen/views/widgets/onboarding_page.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';

class KamariatiScrollablePages extends StatelessWidget {
  const KamariatiScrollablePages({
    super.key, 
    required this.onboardingScreenController,
    });

    final OnboardingScreenController  onboardingScreenController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: onboardingScreenController.pageController,
      onPageChanged: onboardingScreenController.updatePageIndicator,
      children: const [
        OnboardingPage(
          image: KamariatiImages.onBoardingImage1, 
          title: KamariatiTexts.onBoardingTitle1, 
          subtitle: KamariatiTexts.onBoardingSubTitle1,
        ),
        OnboardingPage(
          image: KamariatiImages.onBoardingImage2, 
          title: KamariatiTexts.onBoardingTitle2, 
          subtitle: KamariatiTexts.onBoardingSubTitle2,
        ),
        OnboardingPage(
          image: KamariatiImages.onBoardingImage3, 
          title: KamariatiTexts.onBoardingTitle3, 
          subtitle: KamariatiTexts.onBoardingSubTitle3,
        ),
      ],
    );
  }
}