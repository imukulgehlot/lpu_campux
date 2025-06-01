import 'package:flutter/material.dart';
import 'package:lpu_campux/core/widgets/common/animated_dot_indicator.dart';
import 'package:lpu_campux/core/widgets/custom_image.dart';
import 'package:lpu_campux/features/onboarding/controllers/onboarding_controller.dart';
import 'package:lpu_campux/features/onboarding/widgets/onboarding_content_page.dart';

import '../../core/basic_features.dart';

class OnBoardingScreen extends GetView<OnBoardingController> {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, _) {
          if (!didPop) {
            controller.goToPrevPage();
          }
        },
        child: GetBuilder(
          init: OnBoardingController(),
          builder: (controller) => Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: CustomSvgAssetImage(
                  image: AppImages.icBackButton,
                  width: Dimensions.w40,
                ),
                onPressed: controller.goToPrevPage,
              ),
              actions: [
                if (controller.currentPage <= 1)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: controller.navigateToCauseScreen,
                        child: Text(
                          AppString.skip,
                          style: fontStyleSemiBold15.apply(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.w5,
                      )
                    ],
                  )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Pages
                    Container(
                      padding: EdgeInsets.only(top: Dimensions.h25),
                      height: Dimensions.screenHeight() * 0.70,
                      child: PageView(
                        physics: const BouncingScrollPhysics(),
                        onPageChanged: controller.changePage,
                        controller: controller.pageController,
                        children: [
                          OnBoardingContent(
                              // showAnimation: controller.showFirstPageAnimation,
                              text1: AppString.onboarding1Title,
                              text2: AppString.campuX,
                              image: AppImages.icOnboarding1),
                          const OnBoardingContent(
                              text1: AppString.onboarding2Title,
                              text2: AppString.smartTools,
                              image: AppImages.icOnboarding2),
                          const OnBoardingContent(
                              text1: AppString.onboarding3Title,
                              text2: AppString.campuX,
                              image: AppImages.icOnboarding3)
                        ],
                      ),
                    ),

                    // Dots & Next Button
                    Padding(
                      padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.commonPaddingForScreen)
                          .copyWith(bottom: Dimensions.h40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Indicator Dots
                          AnimatedDotIndicator(
                            currentIndex: controller.currentPage,
                            length: 3,
                          ),

                          // Next Button
                          Hero(
                            tag: "signInToIntro",
                            child: MyButton(
                              cornerRadius: Dimensions.r10,
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.w13, vertical: 0),
                              miniWidth: Dimensions.w100,
                              height: Dimensions.h30,
                              onPressed: controller.nextPage,
                              title: null,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppString.next,
                                      style: fontStyleSemiBold13.apply(
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.arrow_right_alt_rounded,
                                      size: Dimensions.w30,
                                      color: AppColors.whiteColor,
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}
