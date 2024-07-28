import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/routes/app_pages.dart';

class OnboardingScreenController extends GetxController {
  static OnboardingScreenController get instance => Get.find();

  // -- Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // -- Update Current Index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // -- Jump to Spesific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // -- Update Current Index & Jump to next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.offAllNamed(Routes.LOGIN_SCREEN);
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  ///Update Current index & jump to the last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
