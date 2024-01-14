import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentIndex = 0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentIndex.value = index;

  /// Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    pageController.jumpToPage(index);
  }

  /// Update current index and jump to the next page
  void nextPage() {
    if (currentIndex.value == 2) {
      // Get.offAll(const LoginPage());
    } else {
      int pageNumber = currentIndex.value + 1;
      pageController.animateToPage(pageNumber,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      pageController.jumpToPage(pageNumber);
    }
  }

  /// Update current index and jump to the last page
  void skipPage() {
    currentIndex.value = 2;
    pageController.animateToPage(2,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    pageController.jumpToPage(2);
  }
}