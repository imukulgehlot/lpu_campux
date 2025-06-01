import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpu_campux/core/utils/app_binding.dart';
import 'package:lpu_campux/core/utils/app_utils.dart';
import 'package:lpu_campux/features/bottom_nav/bottom_nav_screen.dart';

class OnBoardingController extends GetxController {
  final PageController pageController = PageController(keepPage: false);

  @override
  onClose() {
    pageController.dispose();
    super.onClose();
  }

  int currentPage = 0;
  bool showFirstPageAnimation = false;

  void changePage(int pageNum) {
    currentPage = pageNum;

    pageController.animateToPage(
      pageNum,
      duration: const Duration(milliseconds: 800),
      curve: Curves.fastLinearToSlowEaseIn,
    );

    update();
  }

  void goToPrevPage() {
    if (currentPage == 0) {
      AppUtils.showSignOutDialogue();
    } else {
      currentPage--;
      if (currentPage == 0) {
        showFirstPageAnimation = true;
      }
      pageController.previousPage(
        duration: const Duration(milliseconds: 200),
        curve: Curves.linear,
      );
      update();
    }
  }

  void nextPage() {
    if (currentPage <= 1) {
      changePage(currentPage + 1);
    } else {
      navigateToCauseScreen();
    }
  }

  void navigateToCauseScreen() =>
      Get.offAll(() => BottomNavScreen(), binding: AppBinding());
}
