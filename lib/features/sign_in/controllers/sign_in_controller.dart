import 'package:flutter/material.dart';
import 'package:lpu_campux/features/onboarding/onboarding_screen.dart';

import '../../../core/basic_features.dart';

class SignInController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final isPrefilled = true;

  final isPasswordVisible = false.obs;
  late final emailController =
      TextEditingController(text: isPrefilled ? 'somemail@gmail.com' : '');
  late final forgotPassController =
      TextEditingController(text: isPrefilled ? 'somemail@gmail.com' : '');
  late final passwordController =
      TextEditingController(text: isPrefilled ? 'meowmeow' : '');

  late AnimationController rotationController;
  late Animation<double> rotationAnimation;
  bool enableBlur = true; // toggle this for blur

  @override
  onInit() {
    super.onInit();
    rotationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true); // this creates back-and-forth

    rotationAnimation = Tween<double>(begin: -0.03, end: 0.03).animate(
      CurvedAnimation(parent: rotationController, curve: Curves.easeInOut),
    );
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    rotationController.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() =>
      isPasswordVisible.value = !isPasswordVisible.value;

  void checkValidation(BuildContext context) {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty) {
      AppUtils.showSnackBar(message: AppString.emailCantBeEmpty);
    } else if (password.isEmpty) {
      AppUtils.showSnackBar(message: AppString.passwordCantBeEmpty);
    } else {
      Future.delayed(
        Duration(milliseconds: 300),
        () => AppUtils.showSnackBar(
            isSuccess: true,
            title: AppString.welcomeBack,
            message: AppString.loggedInSuccessfully,
            durationMilliSecond: 1500),
      );
      navigateToOnboarding();
    }
  }

  void navigateToOnboarding() => Get.to(() => OnBoardingScreen());
}
